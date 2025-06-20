program seq_ssa_RK_CA

/*----------------------------------------------------------------*/
/*
Controls SSA states by reading/writing SSA registers
and responding to user inputs (e.g. On/Off buttons).

This routine should work for the following R&K SSAs:
CA1300 3.8 kW (LCLS SC buncher & standard cryomodule)
CA1300 4.6 kW (LCLS SC & LCLS SC HE)
CA1300 7 kW (LCLS SC & LCLS SC HE)
CA3900 (LCLS SC HL)
CA186 (LCLS SC GUNB)
CA186 7 kW (LCLS HE Gun)

M. Dunning (mdunning@slac.stanford.edu)
*/
/*----------------------------------------------------------------*/

%%#include <epicsTime.h>   // timestamps
%%#include <errlog.h>      // errlogPrintf
%%#include <alarm.h>       // alarm severity strings

/* Sequencer options ---------------------------------------------*/
option +r;  /* one sequence task per ssa */
/*----------------------------------------------------------------*/

int ssaType;
assign ssaType to "{P}Type";

int seqDebug;
assign seqDebug to "{P}SeqDebug";
monitor seqDebug;

int acEnableRBV;
assign acEnableRBV to "{P}ACEnableRBV";
monitor acEnableRBV;

int dcEnableRBV;
assign dcEnableRBV to "{P}DCEnableRBV";
monitor dcEnableRBV;

int dcEnable;
assign dcEnable to "{P}DCEnable";
int dcEnableCount;
int dcDisableCount;

int rfEnableRBV;
assign rfEnableRBV to "{P}RFEnableRBV";
monitor rfEnableRBV;

int rfEnable;
assign rfEnable to "{P}RFEnable";
int rfEnableCount;
int rfDisableCount;

int rfCountdown;
assign rfCountdown to "{P}RFCountdown";
monitor rfCountdown;
int rfCountdownLast = -1;

int faultInt;
assign faultInt to "{P}ErrCodeInt";
monitor faultInt;

int faultExt;
assign faultExt to "{P}ErrCodeExt";
monitor faultExt;

int warningCode;
assign warningCode to "{P}WarningCode";
monitor warningCode;

int critWarningCode;
assign critWarningCode to "{P}CritWarnCode";
monitor critWarningCode;

int faultIntReset;
assign faultIntReset to "{P}FaultIntReset";
int faultIntResetCount;

int faultExtReset;
assign faultExtReset to "{P}FaultExtReset";
int faultExtResetCount;

int warningReset;
assign warningReset to "{P}WarningReset";
int warningResetCount;

int statusMsg;
assign statusMsg to "{P}StatusMsg";

int faultReset;
assign faultReset to "{P}FaultReset";
monitor faultReset;

int powerOn;
assign powerOn to "{P}PowerOn";
monitor powerOn;
evflag powerOnFlag;
sync powerOn powerOnFlag;

int powerOff;
assign powerOff to "{P}PowerOff";
monitor powerOff;

int allModulesOn;
assign allModulesOn to "{P}ModuleOnSum";
monitor allModulesOn;
int moduleOnCount;

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
evflag drainVoltFlag;

int drainVoltRbvLsv;
assign drainVoltRbvLsv to "{P}DrainVoltRBV.LSV";

int drainVoltRbvLlsv;
assign drainVoltRbvLlsv to "{P}DrainVoltRBV.LLSV";

int drainVoltRbvHsv;
assign drainVoltRbvHsv to "{P}DrainVoltRBV.HSV";

int drainVoltRbvHhsv;
assign drainVoltRbvHhsv to "{P}DrainVoltRBV.HHSV";

int drainVoltErrorOnsv;
assign drainVoltErrorOnsv to "{P}DrainVoltError.ONSV";

int drainVoltErrorTwsv;
assign drainVoltErrorTwsv to "{P}DrainVoltError.TWSV";

// Constants --------------------------------
#define failWait 5.0  // Time to wait after attempting to reset a fault before we declare failure
#define resetTimeout 10.0  // Time to wait after attempting to reset a fault before we declare failure
#define powerOnTimeout 10.0  // Time to wait before we declare power on sequence to be a failure
#define dcEnableWait 0.5  // Time to wait between DC enable loop checks
#define rfEnableWait (powerOnTimeout-1.0)  // Time to wait between DC enable and RF enable (must be < powerOnTimeout)
#define rfCountdownWait 2.5  // Time to wait between rfCountdown loop checks
#define drainVoltWait 3.0  // Time to wait between DC enable and setting drain voltage
#define moduleOnWait 2.0  // Time to wait between moduleOn loop checks
#define powerOnWait 2.0  // Time to wait in faultResetState before going to poweringOnState
#define powerOffTimeout 5.0  // Time to wait in poweringOffState before going to powerOffFailState
#define sysRebootTimeout 6.0  // Time to wait after sysReboot before we go to ssaOnState
#define xPortRebootTimeout 6.0  // Time to wait after xPortReboot before we go to ssaOnState
#define procResetTimeout 6.0  // Time to wait after procReset before we go to ssaOnState
#define isFaulted (faultInt || faultExt || critWarningCode)
#define isOn (acEnableRBV && dcEnableRBV && rfEnableRBV)
#define isOff (!acEnableRBV || (!dcEnableRBV && !rfEnableRBV))
#define isOffline ((pvSeverity(dcEnableRBV) == pvSevrINVALID) && (pvSeverity(rfEnableRBV) == pvSevrINVALID))
#define dcEnableRetries 2
#define rfEnableRetries 2
#define dcDisableRetries 1
#define rfDisableRetries 1
#define faultIntResetRetries 2
#define faultExtResetRetries 2
#define warningResetRetries 1
#define moduleOnRetries 15

// Variables --------------------------------
%% static char tsbuffer[64];  // For timestamp
%{ enum status {STAT_UNK, STAT_FLT, STAT_OFF, STAT_ON, STAT_RST, STAT_PWRON, STAT_PWROFF, STAT_RST_FAIL, 
    STAT_PWRON_FAIL, STAT_PWROFF_FAIL, STAT_RBT, STAT_XP_RBT, STAT_PROC_RST, STAT_OFFLINE};
}%
%% enum ssa_type {CA1300_7kW, CA1300_4kW, CA1300, CA3900, CA186};

// Functions ----------------------------------
%{ static char *timestamp() {
   epicsTimeStamp ts_current;
   epicsTimeGetCurrent(&ts_current);
   epicsTimeToStrftime(tsbuffer, sizeof(tsbuffer), "%Y%m%d_%H:%M:%S.%06f", &ts_current);
   return tsbuffer;
   }
}%

/*----------------------------------------------------------------*/
ss ssa_state_check {
    state initState {
    /* Initial state */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: initState\n", timestamp());
            // Clear all pending actions
            efClear(powerOnFlag);
            efClear(sysRebootFlag);
            efClear(xPortRebootFlag);
            efClear(procResetFlag);
            efClear(drainVoltFlag);
            // Disable drain volt alarms
            drainVoltRbvLlsv = NO_ALARM;
            pvPut(drainVoltRbvLlsv);
            drainVoltRbvLsv = NO_ALARM;
            pvPut(drainVoltRbvLsv);
            drainVoltRbvHsv = NO_ALARM;
            pvPut(drainVoltRbvHsv);
            drainVoltRbvHhsv = NO_ALARM;
            pvPut(drainVoltRbvHhsv);
            drainVoltErrorOnsv = NO_ALARM;
            pvPut(drainVoltErrorOnsv, SYNC);
            drainVoltErrorTwsv = NO_ALARM;
            pvPut(drainVoltErrorTwsv, SYNC);
            if (powerOn) {
                powerOn = 0;
                pvPut(powerOn);
            }
            if (powerOff) {
                powerOff = 0;
                pvPut(powerOff);
            }
            if (faultReset) {
                faultReset = 0;
                pvPut(faultReset);
            }
            if (systemReboot) {
                systemReboot = 0;
                pvPut(systemReboot);
            }
            if (xPortReboot) {
                xPortReboot = 0;
                pvPut(xPortReboot);
            }
            if (procReset) {
                procReset = 0;
                pvPut(procReset);
            }
        }

        when (isOffline) {
        } state ssaOfflineState

        when (isFaulted) {
        } state ssaFaultedState

        when (!isOn) {
        // Careful: !isOn is not equal to isOff.  Here we want the off state if partially off.
        } state ssaOffState

        when (isOn) {
        } state ssaOnState
    }

    state ssaOnState {
    /* SSA is on and running: No faults; DC and RF are enabled. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: ssaOnState\n", timestamp());
            efClear(powerOnFlag);
            statusMsg = STAT_ON;
            pvPut(statusMsg);
            // Enable drain volt alarms
            drainVoltRbvLlsv = MAJOR_ALARM;
            pvPut(drainVoltRbvLlsv);
            drainVoltRbvLsv = MINOR_ALARM;
            pvPut(drainVoltRbvLsv);
            drainVoltRbvHsv = MINOR_ALARM;
            pvPut(drainVoltRbvHsv);
            drainVoltRbvHhsv = MAJOR_ALARM;
            pvPut(drainVoltRbvHhsv);
            drainVoltErrorOnsv = MINOR_ALARM;
            pvPut(drainVoltErrorOnsv);
            drainVoltErrorTwsv = MAJOR_ALARM;
            pvPut(drainVoltErrorTwsv);
        }

        when (isOffline) {
        } state ssaOfflineState

        when (isFaulted) {
        } state ssaFaultedState

        when (!isOn) {
        // Careful: !isOn is not equal to isOff.  Here we want the off state if partially off.
        } state ssaOffState

        when (powerOn && isOn) {
            // We're already on
            powerOn = 0;
            pvPut(powerOn);
        } state ssaOnState

        when (faultReset) {
            // Ignore fault reset
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

        exit {
            // Disable drain volt alarms
            drainVoltRbvLlsv = NO_ALARM;
            pvPut(drainVoltRbvLlsv);
            drainVoltRbvLsv = NO_ALARM;
            pvPut(drainVoltRbvLsv);
            drainVoltRbvHsv = NO_ALARM;
            pvPut(drainVoltRbvHsv);
            drainVoltRbvHhsv = NO_ALARM;
            pvPut(drainVoltRbvHhsv);
            drainVoltErrorOnsv = NO_ALARM;
            pvPut(drainVoltErrorOnsv);
            drainVoltErrorTwsv = NO_ALARM;
            pvPut(drainVoltErrorTwsv);
        }
    }

    state ssaOffState {
    /* SSA is off: No faults, but DC and/or RF disabled. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: ssaOffState\n", timestamp());
            efClear(powerOnFlag);
            statusMsg = STAT_OFF;
            pvPut(statusMsg);
        }

        when (isOffline) {
        } state ssaOfflineState

        when (isOn) {
        } state ssaOnState

        when (isFaulted) {
        } state ssaFaultedState

        when (faultReset && isFaulted) {
            // This shouldn't happen, but just in case
        } state faultResetState

        when (faultReset && !isFaulted) {
            // Ignore fault reset if there is no fault
            faultReset = 0;
            pvPut(faultReset);
        } state ssaOffState

        when (powerOn) {
        } state poweringOnState

        when (powerOff) {
            // We're already off
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

    state ssaOfflineState {
    /* SSA is offline */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: ssaOfflineState\n", timestamp());
            efClear(powerOnFlag);
            statusMsg = STAT_OFFLINE;
            pvPut(statusMsg);
        }

        when (powerOn) {
            powerOn = 0;
            pvPut(powerOn);
        } state ssaOfflineState

        when (powerOff) {
            powerOff = 0;
            pvPut(powerOff);
        } state ssaOfflineState

        when (faultReset) {
            faultReset = 0;
            pvPut(faultReset);
        } state ssaOfflineState

        when (!isOffline) {
        } state initState
    }

    state ssaFaultedState {
    /* SSA is off: External or internal fault. SSA internally disables DC & RF when this happens. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: ssaFaultedState\n", timestamp());
            errlogPrintf("[%s] WARNING: SSA faulted (%s)\n", timestamp(), macValueGet("P"));
            efClear(powerOnFlag);
            statusMsg = STAT_FLT;
            pvPut(statusMsg);
        }

        when (!isFaulted) {
        } state initState

        when (isOffline) {
        } state ssaOfflineState

        when (faultReset) {
        } state faultResetState

        when (powerOn) {
        } state faultResetState

        when (powerOff) {
            // Ignore power off command if still faulted
            powerOff = 0;
            pvPut(powerOff);
        } state ssaFaultedState

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
            if (seqDebug) printf("[%s] DEBUG: STATE: faultResetState\n", timestamp());
            errlogPrintf("[%s] INFO: Resetting SSA faults (%s)\n", timestamp(), macValueGet("P"));
            if (seqDebug) printf("[%s] DEBUG: powerOnFlag=%d\n", timestamp(), efTest(powerOnFlag));
            statusMsg = STAT_RST;
            pvPut(statusMsg);
            pvGet(ssaType);
            faultIntResetCount = 0;
            faultExtResetCount = 0;
            warningResetCount = 0;
            if (dcEnableRBV) {
                if (seqDebug) printf("[%s] DEBUG: dcDisable\n", timestamp());
                dcEnable = 0;
                pvPut(dcEnable, SYNC);
            }
            if (rfEnableRBV) {
                if (seqDebug) printf("[%s] DEBUG: rfDisable\n", timestamp());
                rfEnable = 0;
                pvPut(rfEnable, SYNC);
            }
        }

        // Normal fault reset; not part of power on routine
        when (!isFaulted && !efTest(powerOnFlag)) {
            faultReset = 0;
            pvPut(faultReset);
        } state initState

        when (delay(0.5) && faultInt && (faultIntResetCount <= faultIntResetRetries)) {
            if (seqDebug) printf("[%s] DEBUG: faultIntReset, faultIntResetCount=%d\n", timestamp(), faultIntResetCount);
            faultIntReset = 1;
            pvPut(faultIntReset, SYNC);
            faultIntResetCount++;
        } state faultResetState


        when (delay(0.5) && faultExt && (faultExtResetCount <= faultExtResetRetries)) {
            if (ssaType == CA1300_7kW) {
                // The RK 7kW SSA needs a delay between resetting internal and external faults.
                if (seqDebug) printf("[%s] DEBUG: ssaType=%d, waiting to reset external fault(s)...\n", timestamp(), ssaType);
                epicsThreadSleep(10.0);
            }
            if (seqDebug) printf("[%s] DEBUG: faultExtReset, faultExtResetCount=%d\n", timestamp(), faultExtResetCount);
            faultExtReset = 1;
            pvPut(faultExtReset, SYNC);
            faultExtResetCount++;
        } state faultResetState

        when (delay(1.0) && (warningCode || critWarningCode) && (warningResetCount <= warningResetRetries)) {
            if (seqDebug) printf("[%s] DEBUG: warningReset, warningResetCount=%d\n", timestamp(), warningResetCount);
            warningReset = 1;
            pvPut(warningReset, SYNC);
            warningResetCount++;
        } state faultResetState

        // Part of power on routine: if faults are clear, transition to poweringOnState
        when (delay(powerOnWait) && !isFaulted && efTest(powerOnFlag)) {
        } state poweringOnState

        when (delay(resetTimeout) && isFaulted) {
            faultReset = 0;
            pvPut(faultReset);
        } state faultResetFailState
        
        exit {
            efClear(powerOnFlag);
        }
    }

    state faultResetFailState {
    /* Fault reset failed: Wait a bit and then transition back to faulted state. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: faultResetFailState\n", timestamp());
            errlogPrintf("[%s] WARNING: Fault reset failed (%s)\n", timestamp(), macValueGet("P"));
            statusMsg = STAT_RST_FAIL;
            pvPut(statusMsg);
        }

        when (delay(failWait)) {
            if (powerOn) {
                powerOn = 0;
                pvPut(powerOn);
                efClear(powerOnFlag);
            }
        } state ssaFaultedState
        
        exit {
            efClear(powerOnFlag);
        }
    }

    state poweringOnState {
    /* Turn SSA on: Reset faults if present; enable DC; set drain voltage; enable RF. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: poweringOnState\n", timestamp());
            errlogPrintf("[%s] INFO: Powering SSA on (%s)\n", timestamp(), macValueGet("P"));
            statusMsg = STAT_PWRON;
            pvPut(statusMsg);
            dcEnableCount = 0;
            rfEnableCount = 0;
            moduleOnCount = 0;
            pvGet(ssaType);
        }

        when (isOn) {
            powerOn = 0;
            pvPut(powerOn);
        } state ssaOnState

        when (powerOff) {
            // In case we want to bail and go to power off state
            powerOn = 0;
            pvPut(powerOn);
        } state poweringOffState

        when (delay(dcEnableWait) && !dcEnableRBV && (dcEnableCount <= dcEnableRetries)) {
            if (seqDebug) printf("[%s] DEBUG: DC enable: dcEnableCount=%d\n", timestamp(), dcEnableCount);
            dcEnable = 1;
            pvPut(dcEnable, SYNC);
            dcEnableCount++;
        } state poweringOnState

        when (delay(rfCountdownWait) && (ssaType == CA1300_7kW) && (rfCountdown > 0) && (rfCountdown != rfCountdownLast)) {
            // The 7kW SSA has a 90-second countdown timer that starts after enabling DC.
            // We must wait until this timer is expired before enabling RF and setting the PS voltage.
            if (seqDebug) printf("[%s] DEBUG: ssaType=%d, rfCountdown=%d, rfCountdownLast=%d\n", timestamp(), 
                    ssaType, rfCountdown, rfCountdownLast);
            rfCountdownLast = rfCountdown;
        } state poweringOnState

        when (delay(moduleOnWait) && (ssaType == CA186) && !allModulesOn && (moduleOnCount < moduleOnRetries)) {
            // The CA186 SSA needs ~20 sec for all modules to power on, after enabling DC.
            // The allModulesOn PV should tell us when all modules are on.
            if (seqDebug) printf("[%s] DEBUG: ssaType=%d, allModulesOn=%d, moduleOnCount=%d\n", timestamp(), 
                    ssaType, allModulesOn, moduleOnCount);
            moduleOnCount++;
        } state poweringOnState

        when (delay(drainVoltWait) && dcEnableRBV && !efTest(drainVoltFlag) && (rfCountdown == 0)
                && allModulesOn) {
            if ((ssaType == CA1300_7kW) || (ssaType == CA186)) {
                // The 7kW and gun SSAs need a bit more time or they will not respond to the next command
                epicsThreadSleep(5.0);
            }
            if (seqDebug) printf("[%s] DEBUG: drainVoltProc\n", timestamp());
            drainVoltProc = 1;
            pvPut(drainVoltProc, SYNC);
            efSet(drainVoltFlag);
        } state poweringOnState

        when (delay(rfEnableWait) && dcEnableRBV && efTest(drainVoltFlag) && (rfCountdown == 0) 
                && !rfEnableRBV && allModulesOn && (rfEnableCount <= rfEnableRetries)) {
            if (seqDebug) printf("[%s] DEBUG: RF enable: rfEnableCount=%d\n", timestamp(), rfEnableCount);
            rfEnable = 1;
            pvPut(rfEnable, SYNC);
            rfEnableCount++;
        } state poweringOnState

        when (delay(powerOnTimeout) && !isOn) {
            powerOn = 0;
            pvPut(powerOn);
        } state powerOnFailState

        exit {
            efClear(drainVoltFlag);
            efClear(powerOnFlag);
        }
    }
    
    state powerOnFailState {
    /* Power on failed: Wait a bit and then transition back to Off state. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: powerOnFailState\n", timestamp());
            errlogPrintf("[%s] WARNING: Power on failed (%s)\n", timestamp(), macValueGet("P"));
            statusMsg = STAT_PWRON_FAIL;
            pvPut(statusMsg);
        }

        when (delay(failWait)) {
        } state ssaOffState
        
        exit {
            efClear(powerOnFlag);
        }
    }
    
    state poweringOffState {
    /* Turn SSA off: Disable RF; Disable DC. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: poweringOffState\n", timestamp());
            errlogPrintf("[%s] INFO: Powering SSA off (%s)\n", timestamp(), macValueGet("P"));
            statusMsg = STAT_PWROFF;
            pvPut(statusMsg);
            dcDisableCount = 0;
            rfDisableCount = 0;
        }

        when (isOff) {
            powerOff = 0;
            pvPut(powerOff);
        } state ssaOffState

        when (delay(0.5) && rfEnableRBV && (rfDisableCount <= rfDisableRetries)) {
            if (seqDebug) printf("[%s] DEBUG: rfDisable, rfDisableCount=%d\n", timestamp(), rfDisableCount);
            rfEnable = 0;
            pvPut(rfEnable, SYNC);
            rfDisableCount++;
        } state poweringOffState

        when (delay(0.5) && dcEnableRBV && (dcDisableCount <= dcDisableRetries)) {
            if (seqDebug) printf("[%s] DEBUG: dcDisable, dcDisableCount=%d\n", timestamp(), dcDisableCount);
            dcEnable = 0;
            pvPut(dcEnable, SYNC);
            dcDisableCount++;
        } state poweringOffState

        when (delay(powerOffTimeout) && isOn) {
            powerOff = 0;
            pvPut(powerOff);
        } state powerOffFailState
        
        exit {
            efClear(powerOnFlag);
        }
    }
    
    state powerOffFailState {
    /* Power off failed: Wait a bit and then transition back to On state. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: powerOffFailState\n", timestamp());
            errlogPrintf("[%s] WARNING: Power off failed (%s)\n", timestamp(), macValueGet("P"));
            statusMsg = STAT_PWROFF_FAIL;
            pvPut(statusMsg);
        }

        when (delay(failWait)) {
        } state initState
        
        exit {
            efClear(powerOnFlag);
        }
    }
    
    state sysRebootState {
    /* System reboot: Execute system reboot, return and wait, then transition back to initial state. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: sysReboot\n", timestamp());
            errlogPrintf("[%s] INFO: SSA sysReboot (%s)\n", timestamp(), macValueGet("P"));
        }

        when (!efTest(sysRebootFlag)) {
            statusMsg = STAT_RBT;
            pvPut(statusMsg);
            sysRebootReg = 1;
            pvPut(sysRebootReg, SYNC);
            efSet(sysRebootFlag);
        } state sysRebootState

        when (delay(sysRebootTimeout) && efTest(sysRebootFlag)) {
            systemReboot = 0;
            pvPut(systemReboot);
            efClear(sysRebootFlag);
        } state initState
    }
    
    state xPortRebootState {
    /* Lantronix X-port reboot: Execute reboot, return and wait, then transition back to initial state. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: xPortReboot\n", timestamp());
            errlogPrintf("[%s] INFO: SSA X-port reboot (%s)\n", timestamp(), macValueGet("P"));
        }

        when (!efTest(xPortRebootFlag)) {
            statusMsg = STAT_XP_RBT;
            pvPut(statusMsg);
            xPortRebootReg = 1;
            pvPut(xPortRebootReg, SYNC);
            efSet(xPortRebootFlag);
        } state xPortRebootState

        when (delay(xPortRebootTimeout) && efTest(xPortRebootFlag)) {
            xPortReboot = 0;
            pvPut(xPortReboot);
            efClear(xPortRebootFlag);
        } state initState
    }
    
    state procResetState {
    /* Processor reset: Execute reset, return and wait, then transition back to initial state. */
        entry {
            if (seqDebug) printf("[%s] DEBUG: STATE: procReset\n", timestamp());
            errlogPrintf("[%s] INFO: SSA processor reset (%s)\n", timestamp(), macValueGet("P"));
        }

        when (!efTest(procResetFlag)) {
            statusMsg = STAT_PROC_RST;
            pvPut(statusMsg);
            procResetReg = 1;
            pvPut(procResetReg, SYNC);
            efSet(procResetFlag);
        } state procResetState

        when (delay(procResetTimeout) && efTest(procResetFlag)) {
            procReset = 0;
            pvPut(procReset);
            efClear(procResetFlag);
        } state initState
    }
}

