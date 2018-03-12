program seq_ssa_CA1300

/*----------------------------------------------------------------*/
/*
description...
*/

/*----------------------------------------------------------------*/
option +r;  /* one sequence task per ssa */

/*----------------------------------------------------------------*/

int acEnableRBV;
assign acEnableRBV to "{P}ACEnableRBV";
monitor acEnableRBV;

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

int warningCode;
assign warningCode to "{P}WarningCode";
monitor warningCode;

int warningReset;
assign warningReset to "{P}WarningReset";

int statusMsg;
assign statusMsg to "{P}StatusMsg";

int faultReset;
assign faultReset to "{P}FaultReset";
monitor faultReset;
evflag resetFlag;

int powerOn;
assign powerOn to "{P}PowerOn";
monitor powerOn;
evflag powerOnFlag;

int powerOff;
assign powerOff to "{P}PowerOff";
monitor powerOff;
evflag powerOffFlag;

int systemReboot;
assign systemReboot to "{P}SystemReboot";
monitor systemReboot;
int sysRebootReg;
assign sysRebootReg to "{P}SysReboot";
evflag sysRebootFlag;

int xPortReboot;
assign xPortReboot to "{P}XPortReboot";
monitor xPortReboot;
int xPortRebootReg;
assign xPortRebootReg to "{P}XPReboot";
evflag xPortRebootFlag;

int drainVoltProc;
assign drainVoltProc to "{P}DrainVoltSetpt.PROC";

#define DEBUG 1
#define failWait 5.0
#define resetTimeout 5.0
#define powerOnTimeout 5.0
#define powerOnWait 2.0
#define powerOffTimeout 5.0
#define sysRebootTimeout 6.0
#define xPortRebootTimeout 6.0

/*----------------------------------------------------------------*/
ss ssa_state_check {
    state ssaOnState {
    /* SSA is on and running: No faults; DC and RF are enabled. */
        entry {
            if (DEBUG) printf("STATE: ssaOnState\n");
            statusMsg = 3;
            pvPut(statusMsg);
        }
        when (errorCodeInt || errorCodeExt) {
        } state faultedState
        when (!powerOn && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state ssaOffState
        when (powerOn && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state poweringOnState
        when (powerOn && (acEnableRBV && dcEnableRBV && rfEnableRBV)) {
            powerOn = 0;
            pvPut(powerOn);
        } state ssaOnState
        when (faultReset) {
            faultReset = 0;
            pvPut(faultReset);
        } state ssaOnState
        when (powerOff) {
        } state poweringOffState
        when (systemReboot) {
            systemReboot = 0;
            pvPut(systemReboot);
        } state ssaOnState
        when (xPortReboot) {
            xPortReboot = 0;
            pvPut(xPortReboot);
        } state ssaOnState
    }

    state ssaOffState {
    /* SSA is off: No faults, but DC and/or RF disabled. */
        entry {
            if (DEBUG) printf("STATE: ssaOffState\n");
            statusMsg = 2;
            pvPut(statusMsg);
        }
        when ((acEnableRBV && dcEnableRBV && rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state ssaOnState
        when (errorCodeInt || errorCodeExt) {
        } state faultedState
        when (faultReset && (errorCodeInt || errorCodeExt)) {
        } state faultResetState
        when (faultReset && !(errorCodeInt || errorCodeExt)) {
            faultReset = 0;
            pvPut(faultReset);
        } state ssaOffState
        when (powerOn && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV || errorCodeInt || errorCodeExt)) {
        } state poweringOnState
        when (powerOff) {
            powerOff = 0;
            pvPut(powerOff);
        } state ssaOffState
        when (systemReboot) {
        } state sysRebootState
        when (xPortReboot) {
        } state xPortRebootState
    }

    state faultedState {
    /* SSA is off: External or internal fault. SSA internally disables DC & RF when this happens. */
        entry {
            if (DEBUG) printf("STATE: faultedState\n");
            statusMsg = 1;
            pvPut(statusMsg);
        }
        when ((acEnableRBV && dcEnableRBV && rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state ssaOnState
        when ((!acEnableRBV || !dcEnableRBV || !rfEnableRBV) && !(errorCodeInt || errorCodeExt)) {
        } state ssaOffState
        when (faultReset && (errorCodeInt || errorCodeExt)) {
        } state faultResetState
        when (powerOn && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV || errorCodeInt || errorCodeExt)) {
        } state poweringOnState
        when (systemReboot) {
        } state sysRebootState
        when (xPortReboot) {
        } state xPortRebootState
    }
    
    state faultResetState {
    /* Reset internal and external faults and warning.  SSA still needs to be turned on after this in order to run. */
        entry {
            if (DEBUG) printf("STATE: faultResetState\n");
        }
        when (!efTest(resetFlag) && (errorCodeInt || errorCodeExt)) {
            if (DEBUG) printf("Resetting...\n");
            statusMsg = 4;
            pvPut(statusMsg);
            if (errorCodeInt) {
                if (DEBUG) printf("faultIntReset\n");
                faultIntReset = 1;
                pvPut(faultIntReset, SYNC);
            }
            if (errorCodeExt) {
                faultExtReset = 1;
                pvPut(faultExtReset, SYNC);
                if (DEBUG) printf("faultExtReset\n");
            }
            if (warningCode) {
                warningReset = 1;
                pvPut(warningReset, SYNC);
                if (DEBUG) printf("warningReset\n");
            }
            efSet(resetFlag);
        } state faultResetState
        when (delay(resetTimeout) && efTest(resetFlag) && (errorCodeInt || errorCodeExt)) {
            faultReset = 0;
            pvPut(faultReset);
            efClear(resetFlag);
        } state faultResetFailState
        when (faultReset && efTest(resetFlag) && !(errorCodeInt || errorCodeExt)) {
            faultReset = 0;
            pvPut(faultReset);
            efClear(resetFlag);
        } state ssaOnState
        when (delay(powerOnWait) && powerOn && efTest(resetFlag) && !(errorCodeInt || errorCodeExt)) {
            efClear(resetFlag);
        } state poweringOnState
    }

    state faultResetFailState {
    /* Fault reset failed: Wait a bit and then transition back to faulted state. */
        entry {
            if (DEBUG) printf("STATE: faultResetFailState\n");
            statusMsg = 7;
            pvPut(statusMsg);
        }
        when (delay(failWait)) {
            if (powerOn) {
                powerOn = 0;
                pvPut(powerOn);
            }
        } state faultedState
    }

    state poweringOnState {
    /* Turn SSA on: Reset faults if present; enable DC; set drain voltage; enable RF. */
        entry {
            if (DEBUG) printf("STATE: poweringOnState\n");
        }
        when (errorCodeInt || errorCodeExt) {
        } state faultResetState
        when (!efTest(powerOnFlag)) {
            if (DEBUG) printf("Powering on...\n");
            statusMsg = 5;
            pvPut(statusMsg);
            if (!dcEnableRBV) {
                if (DEBUG) printf("dcEnable\n");
                dcEnable = 1;
                pvPut(dcEnable, SYNC);
            }
            if (DEBUG) printf("drainVoltProc\n");
            drainVoltProc = 1;
            pvPut(drainVoltProc, SYNC);
            if (!rfEnableRBV) {
                if (DEBUG) printf("rfEnable\n");
                rfEnable = 1;
                pvPut(rfEnable, SYNC);
            }
            efSet(powerOnFlag);
        } state poweringOnState
        when (powerOn && delay(powerOnTimeout) && efTest(powerOnFlag) && (!acEnableRBV || !dcEnableRBV || !rfEnableRBV)) {
            powerOn = 0;
            pvPut(powerOn);
            efClear(powerOnFlag);
        } state powerOnFailState
        when (powerOn && efTest(powerOnFlag) && acEnableRBV && dcEnableRBV && rfEnableRBV) {
            powerOn = 0;
            pvPut(powerOn);
            efClear(powerOnFlag);
        } state ssaOnState
    }
    
    state powerOnFailState {
    /* Power on failed: Wait a bit and then transition back to Off state. */
        entry {
            if (DEBUG) printf("STATE: powerOnFailState\n");
            statusMsg = 8;
            pvPut(statusMsg);
        }
        when (delay(failWait)) {
        } state ssaOffState
    }
    
    state poweringOffState {
    /* Turn SSA off: Disable RF; Disable DC. */
        entry {
            if (DEBUG) printf("STATE: poweringOffState\n");
            statusMsg = 6;
            pvPut(statusMsg);
        }
        when (!efTest(powerOffFlag)) {
            if (rfEnableRBV) {
                rfEnable = 0;
                pvPut(rfEnable, SYNC);
                if (DEBUG) printf("rfDisable\n");
            }
            if (dcEnableRBV) {
                dcEnable = 0;
                pvPut(dcEnable, SYNC);
                if (DEBUG) printf("dcDisable\n");
            }
            efSet(powerOffFlag);
        } state poweringOffState
        when (powerOff && delay(powerOffTimeout) && efTest(powerOffFlag) && (dcEnableRBV && rfEnableRBV)) {
            powerOff = 0;
            pvPut(powerOff);
            efClear(powerOffFlag);
        } state powerOffFailState
        when (powerOff && efTest(powerOffFlag) && (!dcEnableRBV || !rfEnableRBV)) {
            powerOff = 0;
            pvPut(powerOff);
            efClear(powerOffFlag);
        } state ssaOffState
    }
    
    state powerOffFailState {
    /* Power off failed: Wait a bit and then transition back to On state. */
        entry {
            if (DEBUG) printf("STATE: powerOffFailState\n");
            statusMsg = 9;
            pvPut(statusMsg);
        }
        when (delay(failWait)) {
        } state ssaOnState
    }
    
    state sysRebootState {
    /* System reboot: Execute system reboot, then transition back to On state. */
        entry {
            if (DEBUG) printf("STATE: sysReboot\n");
        }
        when (!efTest(sysRebootFlag)) {
            statusMsg = 10;
            pvPut(statusMsg);
            sysRebootReg = 1;
            pvPut(sysRebootReg, SYNC);
            efSet(sysRebootFlag);
        } state sysRebootState
        when (delay(sysRebootTimeout) && efTest(sysRebootFlag)) {
            systemReboot = 0;
            pvPut(systemReboot);
            efClear(sysRebootFlag);
        } state ssaOnState
    }
    
    state xPortRebootState {
    /* Lantronix X-port reboot: Execute reboot, then transition back to On state. */
        entry {
            if (DEBUG) printf("STATE: xPortReboot\n");
        }
        when (!efTest(xPortRebootFlag)) {
            statusMsg = 11;
            pvPut(statusMsg);
            xPortRebootReg = 1;
            pvPut(xPortRebootReg, SYNC);
            efSet(xPortRebootFlag);
        } state xPortRebootState
        when (delay(xPortRebootTimeout) && efTest(xPortRebootFlag)) {
            xPortReboot = 0;
            pvPut(xPortReboot);
            efClear(xPortRebootFlag);
        } state ssaOnState
    }
}




