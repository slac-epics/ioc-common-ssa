program seq_ssa_CA1300

/*----------------------------------------------------------------*/
/*
This sequencer routine controls SSA states by monitoring inputs, which can 
come from SSA readbacks (e.g. interlocks), or user-generated input 
(e.g. On/Off buttons).
*/

%%#include <epicsTime.h>   // timestamps
%%#include <errlog.h>      // errlogPrintf

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

int rfCountdown;
assign rfCountdown to "{P}RFCountdown";
monitor rfCountdown;
int rfCountdownLast = -1;

int faultInt;
assign faultInt to "{P}ErrCodeInt";
monitor faultInt;

int faultIntReset;
assign faultIntReset to "{P}FaultIntReset";

int faultExt;
assign faultExt to "{P}ErrCodeExt";
monitor faultExt;

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

int procReset;
assign procReset to "{P}ProcessorReset";
monitor procReset;
int procResetReg;
assign procResetReg to "{P}ProcReset";
evflag procResetFlag;

int drainVoltProc;
assign drainVoltProc to "{P}DrainVoltSetpt.PROC";

// Constants --------------------------------
#define DEBUG 0
#define failWait 5.0  // Time to wait after attempting to reset a fault before we declare failure
#define resetTimeout 5.0  // Time to wait after attempting to reset a fault before we declare failure
#define powerOnTimeout 5.0  // Time to wait before we declare power on sequence to be a failure
#define powerOnWait 2.0  // Time to wait in faultResetState before going to poweringOnState
#define powerOffTimeout 5.0  // Time to wait in poweringOffState before going to powerOffFailState
#define sysRebootTimeout 6.0  // Time to wait after sysReboot before we go to ssaOnState
#define xPortRebootTimeout 6.0  // Time to wait after xPortReboot before we go to ssaOnState
#define procResetTimeout 6.0  // Time to wait after procReset before we go to ssaOnState
#define faultCond (faultInt || faultExt)
#define enabledCond (acEnableRBV && dcEnableRBV && rfEnableRBV)
#define notEnabledOrFaultCond (!enabledCond || faultCond)

// Variables --------------------------------
%%static char tsbuffer[64];  // For timestamp

// Functions ----------------------------------
%{static char *timestamp() {
    epicsTimeStamp ts_current;
    epicsTimeGetCurrent(&ts_current);
    epicsTimeToStrftime(tsbuffer, sizeof(tsbuffer), "%Y%m%d_%H:%M:%S.%06f", &ts_current);
    return tsbuffer;
}}%

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
        } state sysRebootState
        when (xPortReboot) {
        } state xPortRebootState
        when (procReset) {
        } state procResetState
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
        when (procReset) {
        } state procResetState
    }

    state faultedState {
    /* SSA is off: External or internal fault. SSA internally disables DC & RF when this happens. */
        entry {
            if (DEBUG) printf("STATE: faultedState\n");
            errlogPrintf("[%s] SSA faulted (%s)\n", timestamp(), macValueGet("P"));
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
        when (powerOff) {
            powerOff = 0;
            pvPut(powerOff);
        } state ssaOffState
        when (systemReboot) {
        } state sysRebootState
        when (xPortReboot) {
        } state xPortRebootState
        when (procReset) {
        } state procResetState
    }
    
    state faultResetState {
        /* Reset internal and external faults and warning.
                SSA still needs to be turned on after this in order to run. */
        entry {
            if (DEBUG) printf("STATE: faultResetState\n");
        }
        when (!efTest(resetFlag) && faultCond) {
            if (DEBUG) printf("Resetting...\n");
            errlogPrintf("[%s] Resetting SSA faults (%s)\n", timestamp(), macValueGet("P"));
            statusMsg = 4;
            pvPut(statusMsg);
            if (faultInt) {
                if (DEBUG) printf("faultIntReset\n");
                faultIntReset = 1;
                pvPut(faultIntReset, SYNC);
            }
            if (faultExt) {
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
    /* Turn SSA on: Reset faults if present; enable DC; set drain voltage; enable RF. */
        entry {
            if (DEBUG) printf("STATE: poweringOnState\n");
        }
        when (faultCond) {
        } state faultResetState
        when (!efTest(powerOnFlag)) {
            if (DEBUG) printf("Powering on...\n");
            errlogPrintf("[%s] Powering SSA on (%s)\n", timestamp(), macValueGet("P"));
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
        when (delay(2.0) && rfCountdown && (rfCountdown != rfCountdownLast)) {
            rfCountdownLast = rfCountdown;
            if (DEBUG) printf("rfCountdown=%d, rfCountdownLast=%d\n", rfCountdown, rfCountdownLast);
        } state poweringOnState
        when (powerOn && delay(powerOnTimeout) && efTest(powerOnFlag) && !enabledCond) {
            powerOn = 0;
            pvPut(powerOn);
            efClear(powerOnFlag);
        } state powerOnFailState
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
            errlogPrintf("[%s] Powering SSA off (%s)\n", timestamp(), macValueGet("P"));
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
            errlogPrintf("[%s] SSA sysReboot (%s)\n", timestamp(), macValueGet("P"));
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
            errlogPrintf("[%s] SSA X-port reboot (%s)\n", timestamp(), macValueGet("P"));
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
    
    state procResetState {
    /* Processor reset: Execute reset, then transition back to On state. */
        entry {
            if (DEBUG) printf("STATE: procReset\n");
            errlogPrintf("[%s] SSA processor reset (%s)\n", timestamp(), macValueGet("P"));
        }
        when (!efTest(procResetFlag)) {
            statusMsg = 12;
            pvPut(statusMsg);
            procResetReg = 1;
            pvPut(procResetReg, SYNC);
            efSet(procResetFlag);
        } state procResetState
        when (delay(procResetTimeout) && efTest(procResetFlag)) {
            procReset = 0;
            pvPut(procReset);
            efClear(procResetFlag);
        } state ssaOnState
    }
}




