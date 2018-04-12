 /* Collection of aSub subroutines...
 *----------------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
#include <alarm.h>
#include <registryFunction.h>
#include <aSubRecord.h>
#include <epicsExport.h>

static long asFaultMsg(aSubRecord *prec){
/*------------------------------------------------------------------------------
Takes an integer error code as input, and displays a string message as output.
- Since we're using a strinout record for the output, output messages should be 
    < 40 chars; otherwise we should use a waveform record.
 *----------------------------------------------------------------------------*/
    unsigned int *errCode = (unsigned int *)prec->a;
    char *errMsg;

    if (*errCode == 0) errMsg = "No error";
    else if (*errCode ==   1) errMsg = "DA Unit-1 Current";
    else if (*errCode ==   2) errMsg = "DA Unit-2 Current";
    else if (*errCode ==  21) errMsg = "DA Unit-1 PS Voltage";
    else if (*errCode ==  22) errMsg = "DA Unit-2 PS Voltage";
    else if (*errCode ==  31) errMsg = "DA Unit Heat Sink Temp";
    else if (*errCode ==  41) errMsg = "DA Unit Fan Rot. Speed";
    else if (*errCode == 101) errMsg = "FA Unit1-1 Current";
    else if (*errCode == 102) errMsg = "FA Unit1-2 Current";
    else if (*errCode == 103) errMsg = "FA Unit1-3 Current";
    else if (*errCode == 104) errMsg = "FA Unit1-4 Current";
    else if (*errCode == 105) errMsg = "FA Unit1-5 Current";
    else if (*errCode == 106) errMsg = "FA Unit1-6 Current";
    else if (*errCode == 107) errMsg = "FA Unit1-7 Current";
    else if (*errCode == 108) errMsg = "FA Unit1-8 Current";
    else if (*errCode == 111) errMsg = "FA Unit1-1 Module Pwr";
    else if (*errCode == 112) errMsg = "FA Unit1-2 Module Pwr";
    else if (*errCode == 113) errMsg = "FA Unit1-3 Module Pwr";
    else if (*errCode == 114) errMsg = "FA Unit1-4 Module Pwr";
    else if (*errCode == 121) errMsg = "FA Unit1-1 PS Voltage";
    else if (*errCode == 122) errMsg = "FA Unit1-2 PS Voltage";
    else if (*errCode == 131) errMsg = "FA Unit1 Heat Sink Temp";
    else if (*errCode == 141) errMsg = "FA Unit1 Fan Rot Speed";
    else if (*errCode == 201) errMsg = "FA Unit2-1 Current";
    else if (*errCode == 202) errMsg = "FA Unit2-2 Current";
    else if (*errCode == 203) errMsg = "FA Unit2-3 Current";
    else if (*errCode == 204) errMsg = "FA Unit2-4 Current";
    else if (*errCode == 205) errMsg = "FA Unit2-5 Current";
    else if (*errCode == 206) errMsg = "FA Unit2-6 Current";
    else if (*errCode == 207) errMsg = "FA Unit2-7 Current";
    else if (*errCode == 208) errMsg = "FA Unit2-8 Current";
    else if (*errCode == 211) errMsg = "FA Unit2-1 Module Pwr";
    else if (*errCode == 212) errMsg = "FA Unit2-2 Module Pwr";
    else if (*errCode == 213) errMsg = "FA Unit2-3 Module Pwr";
    else if (*errCode == 214) errMsg = "FA Unit2-4 Module Pwr";
    else if (*errCode == 221) errMsg = "FA Unit2-1 PS Voltage";
    else if (*errCode == 222) errMsg = "FA Unit2-2 PS Voltage";
    else if (*errCode == 231) errMsg = "FA Unit2 Heat Sink Temp";
    else if (*errCode == 241) errMsg = "FA Unit2 Fan Rot Speed";
    else if (*errCode == 301) errMsg = "FA Unit3-1 Current";
    else if (*errCode == 302) errMsg = "FA Unit3-2 Current";
    else if (*errCode == 303) errMsg = "FA Unit3-3 Current";
    else if (*errCode == 304) errMsg = "FA Unit3-4 Current";
    else if (*errCode == 305) errMsg = "FA Unit3-5 Current";
    else if (*errCode == 306) errMsg = "FA Unit3-6 Current";
    else if (*errCode == 307) errMsg = "FA Unit3-7 Current";
    else if (*errCode == 308) errMsg = "FA Unit3-8 Current";
    else if (*errCode == 311) errMsg = "FA Unit3-1 Module Pwr";
    else if (*errCode == 312) errMsg = "FA Unit3-2 Module Pwr";
    else if (*errCode == 313) errMsg = "FA Unit3-3 Module Pwr";
    else if (*errCode == 314) errMsg = "FA Unit3-4 Module Pwr";
    else if (*errCode == 321) errMsg = "FA Unit3-1 PS Voltage";
    else if (*errCode == 322) errMsg = "FA Unit3-2 PS Voltage";
    else if (*errCode == 331) errMsg = "FA Unit3 Heat Sink Temp";
    else if (*errCode == 341) errMsg = "FA Unit3 Fan Rot Speed";
    else if (*errCode == 401) errMsg = "480VAC L1 Status";
    else if (*errCode == 402) errMsg = "480VAC L2 Status";
    else if (*errCode == 403) errMsg = "480VAC L3 Status";
    else if (*errCode == 404) errMsg = "PS Unit Air Temp";
    else if (*errCode == 405) errMsg = "Heat Exc. In. Air Temp";
    else if (*errCode == 409) errMsg = "Outlet LCW Flow Rate";
    else if (*errCode == 410) errMsg = "Inlet LCW Temperature";
    else if (*errCode == 411) errMsg = "Outlet LCW Temperature";
    else if (*errCode == 420) errMsg = "PS Fault Status (> 3 Errs)";
    else if (*errCode == 421) errMsg = "PS Fault Status (PS1)";
    else if (*errCode == 422) errMsg = "PS Fault Status (PS2)";
    else if (*errCode == 423) errMsg = "PS Fault Status (PS3)";
    else if (*errCode == 424) errMsg = "PS Fault Status (PS4)";
    else if (*errCode == 425) errMsg = "PS Fault Status (PS5)";
    else if (*errCode == 426) errMsg = "PS Fault Status (PS6)";
    else if (*errCode == 431) errMsg = "Heat Exc Fan 1 Rot Spd";
    else if (*errCode == 432) errMsg = "Heat Exc Fan 2 Rot Spd";
    else if (*errCode == 433) errMsg = "Heat Exc Fan 3 Rot Spd";
    else if (*errCode == 434) errMsg = "Heat Exc Fan 4 Rot Spd";
    else if (*errCode == 435) errMsg = "PS Fan 1 Rot Spd";
    else if (*errCode == 436) errMsg = "PS Fan 2 Rot Spd";
    else if (*errCode == 437) errMsg = "PS Fan 3 Rot Spd";
    else if (*errCode == 500) errMsg = "Input Drive Pwr";
    else if (*errCode == 501) errMsg = "Forward Pwr";
    else if (*errCode == 502) errMsg = "Water Leak Status";
    else if (*errCode == 503) errMsg = "Ctrl Unit Fan Rot Spd";
    else if (*errCode == 511) errMsg = "Ext. Fault No.1 24V Permit Line";
    else if (*errCode == 512) errMsg = "Ext. Fault No.2 24V Permit Line";
    else if (*errCode == 513) errMsg = "Ext. Fault 1 & 2 24V Permit Line";
    else if (*errCode == 514) errMsg = "Ext. Fault No.3 24V Permit Line";
    else if (*errCode == 515) errMsg = "Ext. Fault 1 & 3 24V Permit Line";
    else if (*errCode == 516) errMsg = "Ext. Fault 2 & 3 24V Permit Line";
    else if (*errCode == 517) errMsg = "Ext. Fault 1,2,3 24V Permit Line";
    else if (*errCode == 518) errMsg = "Ext. Fault No.4 24V Permit Line";
    else if (*errCode == 519) errMsg = "Ext. Fault 1 & 4 24V Permit Line";
    else if (*errCode == 520) errMsg = "Ext. Fault 2 & 4 24V Permit Line";
    else if (*errCode == 521) errMsg = "Ext. Fault 1,2,4 24V Permit Line";
    else if (*errCode == 522) errMsg = "Ext. Fault 3 & 4 24V Permit Line";
    else if (*errCode == 523) errMsg = "Ext. Fault 1,3,4 24V Permit Line";
    else if (*errCode == 524) errMsg = "Ext. Fault 2,3,4 24V Permit Line";
    else if (*errCode == 525) errMsg = "Ext. Fault 1,2,3,4 24V Permit Line";
    else if (*errCode == 530) errMsg = "Reflected Pwr";
    else if (*errCode == 550) errMsg = "Ctrl Unit Air Temp";
    else if (*errCode == 560) errMsg = "Thermostat Status";
    else if (*errCode == 570) errMsg = "120VAC Off or Reboot";
    else if (*errCode == 580) errMsg = "480VAC Status";
    else errMsg = "Unknown error code";
    
    //printf("errCode=%d, errMsg=%s\n", *errCode, errMsg);

    if (errMsg) prec->vala = errMsg;

    return 0;
}

static long asFaultMsg_CA199(aSubRecord *prec){
/*------------------------------------------------------------------------------
Takes an integer error code as input, and displays a string message as output.
- Since we're using a strinout record for the output, output messages should be 
    < 40 chars; otherwise we should use a waveform record.
 *----------------------------------------------------------------------------*/
    unsigned int *errCode = (unsigned int *)prec->a;
    char *errMsg;

    if (*errCode == 0) errMsg = "No error";
    else if (*errCode == 100) errMsg = "Input Power";
    else if (*errCode == 101) errMsg = "Forward Power";
    else if (*errCode == 102) errMsg = "Refelected Power";
    else if (*errCode == 200) errMsg = "Current DA";
    else if (*errCode == 201) errMsg = "Current FA-1";
    else if (*errCode == 202) errMsg = "Current FA-2";
    else if (*errCode == 203) errMsg = "Current FA-3";
    else if (*errCode == 204) errMsg = "Current FA-4";
    else if (*errCode == 211) errMsg = "Voltage";
    else if (*errCode == 300) errMsg = "Thermostat (DA)";
    else if (*errCode == 301) errMsg = "Thermostat (FA1)";
    else if (*errCode == 302) errMsg = "Thermostat (FA2)";
    else if (*errCode == 303) errMsg = "Temperature (DA)";
    else if (*errCode == 304) errMsg = "Temperature (FA1)";
    else if (*errCode == 305) errMsg = "Temperature (FA)";
    else if (*errCode == 400) errMsg = "AC/DC Power Supply";
    else if (*errCode > 400 && *errCode < 449) errMsg = "AC/DC Power Supply";
    else if (*errCode == 500) errMsg = "Water Flow";
    else if (*errCode == 501) errMsg = "Water Leak";

    else errMsg = "Unknown error code";
    
    printf("errCode=%d, errMsg=%s\n", *errCode, errMsg);

    if (errMsg) prec->vala = errMsg;

    return 0;
}

/**************************************************************************/

epicsRegisterFunction(asFaultMsg);
epicsRegisterFunction(asFaultMsg_CA199);

