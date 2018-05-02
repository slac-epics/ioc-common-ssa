program seq_ssa_CA186

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

int faultInt;
assign faultInt to "{P}FaultInt";
monitor faultInt;

int faultIntReset;
assign faultIntReset to "{P}FaultIntReset";

int faultExt;
assign faultExt to "{P}FaultExt";
monitor faultExt;

int faultExtReset;
assign faultExtReset to "{P}FaultExtReset";

int warning;
assign warning to "{P}Warning";
monitor warning;

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

//int modulePwrStatus[31];
int modulePwrStatus[2];
assign modulePwrStatus[0] to $(P)M00:PwrStat;
assign modulePwrStatus[1] to $(P)M30:PwrStat;
monitor modulePwrStatus;

int psVoltProc;
assign psVoltProc to "{P}PSVoltSetpt.PROC";

#define DEBUG 1
#define failWait 5.0
#define resetTimeout 5.0
#define powerOnTimeout 45.0
#define powerOnWait 2.0
#define powerOffTimeout 5.0
#define sysRebootTimeout 6.0
#define xPortRebootTimeout 6.0
#define faultIntCond !faultInt
#define faultExtCond !faultExt
#define warningCond !warning
#define faultCond (!faultInt || !faultExt)
#define enabledCond (acEnableRBV && dcEnableRBV && rfEnableRBV)
//#define notEnabledOrFaultCond (!acEnableRBV || !dcEnableRBV || !rfEnableRBV || !faultInt || !faultExt)
#define notEnabledOrFaultCond (!enabledCond || faultCond)

/*----------------------------------------------------------------*/
ss ssa_state_check {
    state ssaOnState {
    /* SSA is on and running: No faults; DC and RF are enabled. */
        entry {
            if (DEBUG) printf("STATE: ssaOnState\n");
            statusMsg = 3;
            pvPut(statusMsg);
        }
        when (faultCond) {
        } state faultedState
        when (!powerOn && !enabledCond && !faultCond) {
        } state ssaOffState
        when (powerOn && !enabledCond && !faultCond) {
        } state poweringOnState
        when (powerOn && enabledCond) {
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
        when (enabledCond && !faultCond) {
        } state ssaOnState
        when (faultCond) {
        } state faultedState
        when (faultReset && faultCond) {
        } state faultResetState
        when (faultReset && !faultCond) {
            faultReset = 0;
            pvPut(faultReset);
        } state ssaOffState
        when (powerOn && notEnabledOrFaultCond) {
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
        when (enabledCond && !faultCond) {
        } state ssaOnState
        when (!enabledCond && !faultCond) {
        } state ssaOffState
        when (faultReset && faultCond) {
        } state faultResetState
        when (powerOn && notEnabledOrFaultCond) {
        } state poweringOnState
        when (systemReboot) {
        } state sysRebootState
        when (xPortReboot) {
        } state xPortRebootState
    }
    
    state faultResetState {
    /* Disable DC and RF if enabled; reset internal and external faults and warning.  SSA still needs to be turned on after this in order to run. */
        entry {
            if (DEBUG) printf("STATE: faultResetState\n");
        }
        when (!efTest(resetFlag) && faultCond) {
            if (DEBUG) printf("Resetting...\n");
            statusMsg = 4;
            pvPut(statusMsg);
            if (dcEnableRBV) {
                if (DEBUG) printf("dcDisable\n");
                dcEnable = 0;
                pvPut(dcEnable, SYNC);
            }
            if (rfEnableRBV) {
                if (DEBUG) printf("rfDisable\n");
                rfEnable = 0;
                pvPut(rfEnable, SYNC);
            }
            if (faultIntCond) {
                if (DEBUG) printf("faultIntReset\n");
                faultIntReset = 1;
                pvPut(faultIntReset, SYNC);
            }
            if (faultExtCond) {
                faultExtReset = 1;
                pvPut(faultExtReset, SYNC);
                if (DEBUG) printf("faultExtReset\n");
            }
            if (warningCond) {
                warningReset = 1;
                pvPut(warningReset, SYNC);
                if (DEBUG) printf("warningReset\n");
            }
            efSet(resetFlag);
        } state faultResetState
        when (delay(resetTimeout) && efTest(resetFlag) && faultCond) {
            faultReset = 0;
            pvPut(faultReset);
            efClear(resetFlag);
        } state faultResetFailState
        when (faultReset && efTest(resetFlag) && !faultCond) {
            faultReset = 0;
            pvPut(faultReset);
            efClear(resetFlag);
        } state ssaOnState
        when (delay(powerOnWait) && powerOn && efTest(resetFlag) && !faultCond) {
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
    /* Turn SSA on: Reset faults if present; enable DC; wait for all modules to power up; set drain voltage; enable RF. */
        entry {
            if (DEBUG) printf("STATE: poweringOnState\n");
        }
        when (faultCond) {
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
            // The epicsThreadSleep below is temporary...
            epicsThreadSleep(20.0);
            // TODO: Wait for modules to turn on...is there a better way to check than testing each module's power PV or sleeping?
            if (DEBUG) printf("psVoltProc\n");
            psVoltProc = 1;
            pvPut(psVoltProc, SYNC);
            if (!rfEnableRBV) {
                if (DEBUG) printf("rfEnable\n");
                rfEnable = 1;
                pvPut(rfEnable, SYNC);
            }
            efSet(powerOnFlag);
        } state poweringOnState
        when (powerOn && delay(powerOnTimeout) && efTest(powerOnFlag) && !enabledCond) {
            powerOn = 0;
            pvPut(powerOn);
            efClear(powerOnFlag);
        } state powerOnFailState
        // TODO: Do DC & RF read back enabled after all modules are powered on?  Or are they independent? 
        when (powerOn && efTest(powerOnFlag) && enabledCond) {
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
        when (powerOff && delay(powerOffTimeout) && efTest(powerOffFlag) && enabledCond) {
            powerOff = 0;
            pvPut(powerOff);
            efClear(powerOffFlag);
        } state powerOffFailState
        when (powerOff && efTest(powerOffFlag) && !enabledCond) {
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




