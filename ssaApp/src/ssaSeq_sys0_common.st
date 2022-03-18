program seq_ssa_sys0_common

/*
Common operations for all SSAs.
*/

// Options ----------------------------------
option +r;  // Re-entrant: one seq task per device

// Includes ---------------------------------
%% #include <epicsTime.h>   // timestamps
%% #include <errlog.h>      // errlogPrintf
%%#include <string.h>      // sprintf


int ssas_off;
assign ssas_off to "{P}PowerOffAll";
monitor ssas_off;
evflag ssas_off_flag;
sync ssas_off ssas_off_flag;

int ssas_off_abort;
assign ssas_off_abort to "{P}PowerOffAllAbort";
monitor ssas_off_abort;
evflag ssas_off_abort_flag;
sync ssas_off_abort ssas_off_abort_flag;

int ssa_cm_off_pv;
assign ssa_cm_off_pv to "";
string ssa_cm_off_pv_name;

int area, cm, hl, hl_count;

// Constants --------------------------------
#define DEBUG 0
#define NUM_CM 35
#define NUM_HL 2
#define ssa_cm_off_delay 0.1

// Variables --------------------------------
%{
    static char tsbuffer[64];  // For timestamp
}%

// Functions ----------------------------------
%{
    static char *timestamp() {
        epicsTimeStamp ts_current;
        epicsTimeGetCurrent(&ts_current);
        epicsTimeToStrftime(tsbuffer, sizeof(tsbuffer), "%Y%m%d_%H:%M:%S.%06f", &ts_current);
        return tsbuffer;
    }
}%


ss ssa_sys0_common {
    state wait {
        entry {
            if (DEBUG) printf("[%s] DEBUG: State: wait\n", timestamp());
        }

        // Loop until something happens
        when (!ssas_off && delay(0.2)) {
        } state wait

        when (efTestAndClear(ssas_off_flag) && ssas_off) {
        } state powering_ssas_off

    } // state wait

    state powering_ssas_off {
        entry {
            if (DEBUG) printf("[%s] DEBUG: State: powering_ssas_off\n", timestamp());
            epicsPrintf("[%s] INFO: Powering all SSAs off...\n", timestamp());
            area = 0;
            cm = 1;
            hl = FALSE;
            hl_count = 1;
        }

        when(efTestAndClear(ssas_off_abort_flag) && ssas_off_abort) {
            epicsPrintf("[%s] INFO: SSA all off command aborted\n", timestamp());
        } state wait

        when(cm > NUM_CM) {
        } state wait

        when(delay(ssa_cm_off_delay) && ssas_off && (cm < NUM_CM+1)) {
            if (hl) {
                sprintf(ssa_cm_off_pv_name, "ACCL:L1B:H%d00:SSA:PowerOffAll", hl_count);
                hl_count++;
            } else {
                sprintf(ssa_cm_off_pv_name, "ACCL:L%dB:%02d00:SSA:PowerOffAll", area, cm);
            }
            if (DEBUG) printf("DEBUG: ssa_cm_off_pv_name: %s\n", ssa_cm_off_pv_name);
            pvAssign(ssa_cm_off_pv, ssa_cm_off_pv_name);
            ssa_cm_off_pv = TRUE;
            pvPut(ssa_cm_off_pv, SYNC);
            if ((area == 1) && (cm == 3) && (hl_count < NUM_HL+1)) {
                // Don't forget the HLs
                hl = TRUE;
            } else {
                hl = FALSE;
                // Increment the area and CM
                if ((cm == 1) || (cm == 3) || (cm == 15)) {
                    area++;
                }
                cm++;
            }
        } state powering_ssas_off

        exit {
            // Reset the off and abort buttons
            ssas_off = FALSE;
            pvPut(ssas_off);
            ssas_off_abort = FALSE;
            pvPut(ssas_off_abort);
        }
    } // state powering_ssas_off

} // ss ssa_sys0_common

