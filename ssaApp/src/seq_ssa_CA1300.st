program seq_ssa_CA1300

int acEnableRBV;
assign acEnableRBV to "{P}ACEnableRBV";
monitor acEnableRBV;

int acEnable;
assign acEnable to "{P}ACEnable";

int dcEnableRBV;
assign dcEnableRBV to "{P}DCEnableRBV";
monitor dcEnableRBV;

int dcEnable;
assign dcEnable to "{P}DCEnable";

int rfEnableRBV;
assign rfEnableRBV to "{P}RFEnableRBV";
monitor rfEnableRBV;

int rfEnable;
assign rfEnable to "{P}RFEnable";

int errorCodeInt;
assign errorCodeInt to "{P}ErrCodeInt";
monitor errorCodeInt;

int faultIntReset;
assign faultIntReset to "{P}FaultIntReset";

int errorCodeExt;
assign errorCodeExt to "{P}ErrCodeExt";
monitor errorCodeExt;

int faultExtReset;
assign faultExtReset to "{P}FaultExtReset";

/*int warningCode;
assign warningCode to "{P}WarningCode";
monitor warningCode;*/

int runStateMsg;
assign runStateMsg to "{P}RunStateMsg";

int faultReset;
assign faultReset to "{P}FaultReset";
monitor faultReset;
evFlag faultResetFlag;
sync faultReset faultResetFlag;

evflag resetFlag;
int resetCounter = 0;
double resetDelay = 0.2;
double resetTimeout = 3.0;

int powerOn;
assign powerOn to "{P}PowerOn";
monitor powerOn;

evflag powerOnFlag;
int powerOnCounter = 0;
double powerOnDelay = 0.2;
double powerOnTimeout = 3.0;

int DEBUG = 1;

ss state_check {
    state running {
        entry {
            if (DEBUG) printf("STATE: running\n");
            runStateMsg = 3;
            pvPut(runStateMsg);
        }
        when (errorCodeInt || errorCodeExt) {
        } state faulted
        when ((!acEnableRBV || !dcEnableRBV || !rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state disabled
        when (faultReset) {
            //faultReset = 0;
            //pvPut(faultReset);
        } state running
        when (powerOn) {
            powerOn = 0;
            pvPut(powerOn);
        } state running
        when (delay(0.5)) {
        } state running
    }

    state disabled {
        entry {
            if (DEBUG) printf("STATE: disabled\n");
            runStateMsg = 2;
            pvPut(runStateMsg);
        }
        when ((acEnableRBV && dcEnableRBV && rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state running
        when (errorCodeInt || errorCodeExt) {
        } state faulted
        when (faultReset && (errorCodeInt || errorCodeExt)) {
        } state reset
        when (faultReset&& !(errorCodeInt || errorCodeExt)) {
            //faultReset = 0;
            //pvPut(faultReset);
        } state disabled
        when (powerOn && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV || errorCodeInt || errorCodeExt)) {
        } state power
        when (powerOn && !(!acEnableRBV || !dcEnableRBV || !rfEnableRBV || errorCodeInt || errorCodeExt)) {
            powerOn = 0;
            pvPut(powerOn);
        } state disabled
        when (delay(0.5)) {
        } state disabled
    }

    state faulted {
        entry {
            if (DEBUG) printf("STATE: faulted\n");
            runStateMsg = 1;
            pvPut(runStateMsg);
        }
        when ((acEnableRBV && dcEnableRBV && rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state running
        when ((!acEnableRBV || !dcEnableRBV || !rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state disabled
        when (faultReset && (errorCodeInt || errorCodeExt)) {
        } state reset
        when (powerOn && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV || errorCodeInt || errorCodeExt)) {
        } state power
        when (delay(0.5)) {
        } state faulted
    }
    
    state reset {
        entry {
            if (DEBUG) printf("STATE: reset\n");
        }
        when (!efTest(resetFlag) && (errorCodeInt || errorCodeExt)) {
            if (DEBUG) printf("Resetting...\n");
            resetCounter = 0;
            runStateMsg = 4;
            pvPut(runStateMsg);
            if (errorCodeInt) {
                if (DEBUG) printf("faultIntReset\n");
                pvPut(faultIntReset);
            }
            if (errorCodeExt) {
                //pvPut(faultExtReset);
                if (DEBUG) printf("faultExtReset\n");
            }
            efSet(resetFlag);
        } state reset
        when (delay(resetDelay) && efTest(resetFlag) && (errorCodeInt || errorCodeExt)) {
            ++resetCounter;
            if (DEBUG) printf("reset timer: %f s\n", resetCounter*resetDelay);
        } state reset
        when (resetCounter > resetTimeout/(resetDelay + 0.001)) {
        } state resetFail
        when (!(errorCodeInt || errorCodeExt)) {
            //faultReset = 0;
            //pvPut(faultReset);
            efClear(resetFlag);
        } state running
    }

    state resetFail {
        entry {
            if (DEBUG) printf("STATE: resetFail\n");
            runStateMsg = 6;
            pvPut(runStateMsg);
        }
        when (delay(5.0)) {
            resetCounter = 0;
            efClear(resetFlag);
            //faultReset = 0;
            //pvPut(faultReset);
            powerOn = 0;
            pvPut(powerOn);
        } state faulted
    }

    state power {
        entry {
            if (DEBUG) printf("STATE: power\n");
        }
        when (errorCodeInt || errorCodeExt) {
        } state reset
        when (!efTest(powerOnFlag)) {
            if (DEBUG) printf("Powering on...\n");
            powerOnCounter = 0;
            runStateMsg = 5;
            pvPut(runStateMsg);
            if (!acEnableRBV) {
                pvPut(acEnable);
                if (DEBUG) printf("acEnable\n");
            }
            if (!dcEnableRBV) {
                //pvPut(dcEnable);
                if (DEBUG) printf("dcEnable\n");
            }
            if (!rfEnableRBV) {
                pvPut(rfEnable);
                if (DEBUG) printf("rfEnable\n");
            }
            efSet(powerOnFlag);
        } state power
        when (delay(powerOnDelay) && efTest(powerOnFlag) && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV)) {
            ++powerOnCounter;
            if (DEBUG) printf("powerOn timer: %f s\n", powerOnCounter*powerOnDelay);
        } state power
        when (powerOnCounter > powerOnTimeout/(powerOnDelay + 0.001)) {
        } state powerFail
        when (acEnableRBV && dcEnableRBV && rfEnableRBV) {
            powerOn = 0;
            pvPut(powerOn);
            efClear(powerOnFlag);
        } state running
    }
    
    state powerFail {
        entry {
            if (DEBUG) printf("STATE: powerFail\n");
            runStateMsg = 7;
            pvPut(runStateMsg);
        }
        when (delay(5.0)) {
            powerOnCounter = 0;
            efClear(powerOnFlag);
            powerOn = 0;
            pvPut(powerOn);
        } state disabled
    }
}




