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

static long asFaultMsg_CA3900(aSubRecord *prec){
/*------------------------------------------------------------------------------
Takes an integer error code as input, and displays a string message as output.
- Since we're using a strinout record for the output, output messages should be 
    < 40 chars; otherwise we should use a waveform record.
 *----------------------------------------------------------------------------*/
    unsigned int *errCode = (unsigned int *)prec->a;
    char *errMsg;

    if (*errCode == 0) errMsg = "No error";
    else if (*errCode ==   1) errMsg = "480VAC L1 Status";
    else if (*errCode ==   2) errMsg = "480VAC L2 Status";
    else if (*errCode ==   3) errMsg = "480VAC L3 Status";
    else if (*errCode ==   4) errMsg = "PS Unit Air Temp";
    else if (*errCode ==   5) errMsg = "Heat Ex. Inlet Air Temp";
    else if (*errCode ==   9) errMsg = "Outlet LCW Flow Rate";
    else if (*errCode ==  10) errMsg = "Inlet LCW Temperature";
    else if (*errCode ==  11) errMsg = "Outlet LCW Temperature";
    else if (*errCode ==  20) errMsg = "PS Unit Fault Status";
    else if (*errCode ==  31) errMsg = "Heat Ex. Unit Fan1 Spd";
    else if (*errCode ==  32) errMsg = "Heat Ex. Unit Fan2 Spd";
    else if (*errCode ==  33) errMsg = "Heat Ex. Unit Fan3 Spd";
    else if (*errCode ==  34) errMsg = "Heat Ex. Unit Fan4 Spd";
    else if (*errCode ==  35) errMsg = "PS Unit Fan1 Spd";
    else if (*errCode ==  36) errMsg = "PS Unit Fan2 Spd";
    else if (*errCode ==  37) errMsg = "PS Unit Fan3 Spd";
    
    else if (*errCode == 101) errMsg = "FA1 Current 1";
    else if (*errCode == 102) errMsg = "FA1 Current 2";
    else if (*errCode == 103) errMsg = "FA1 Current 3";
    else if (*errCode == 104) errMsg = "FA1 Current 4";
    else if (*errCode == 105) errMsg = "FA1 Current 5";
    else if (*errCode == 106) errMsg = "FA1 Current 6";
    else if (*errCode == 107) errMsg = "FA1 Current 7";
    else if (*errCode == 108) errMsg = "FA1 Current 8";
    else if (*errCode == 109) errMsg = "FA1 Current 9";
    else if (*errCode == 110) errMsg = "FA1 Current 10";
    else if (*errCode == 111) errMsg = "FA1 Drive Amp Current";
    else if (*errCode == 121) errMsg = "FA1 Module Power1";
    else if (*errCode == 122) errMsg = "FA1 Module Power2";
    else if (*errCode == 123) errMsg = "FA1 Module Power3";
    else if (*errCode == 124) errMsg = "FA1 Module Power4";
    else if (*errCode == 125) errMsg = "FA1 Module Power5";
    else if (*errCode == 122) errMsg = "FA Unit1-2 PS Voltage";
    else if (*errCode == 131) errMsg = "FA1 PS Voltage 1";
    else if (*errCode == 132) errMsg = "FA1 PS Voltage 2";
    else if (*errCode == 141) errMsg = "FA1 Heat Sink Temp";
    else if (*errCode == 142) errMsg = "FA1 Thermostat";
    else if (*errCode == 151) errMsg = "FA1 Fan Spd";
    
    else if (*errCode == 201) errMsg = "FA2 Current 1";
    else if (*errCode == 202) errMsg = "FA2 Current 2";
    else if (*errCode == 203) errMsg = "FA2 Current 3";
    else if (*errCode == 204) errMsg = "FA2 Current 4";
    else if (*errCode == 205) errMsg = "FA2 Current 5";
    else if (*errCode == 206) errMsg = "FA2 Current 6";
    else if (*errCode == 207) errMsg = "FA2 Current 7";
    else if (*errCode == 208) errMsg = "FA2 Current 8";
    else if (*errCode == 209) errMsg = "FA2 Current 9";
    else if (*errCode == 210) errMsg = "FA2 Current 10";
    else if (*errCode == 211) errMsg = "FA2 Drive Amp Current";
    else if (*errCode == 221) errMsg = "FA2 Module Power1";
    else if (*errCode == 222) errMsg = "FA2 Module Power2";
    else if (*errCode == 223) errMsg = "FA2 Module Power3";
    else if (*errCode == 224) errMsg = "FA2 Module Power4";
    else if (*errCode == 225) errMsg = "FA2 Module Power5";
    else if (*errCode == 222) errMsg = "FA Unit1-2 PS Voltage";
    else if (*errCode == 231) errMsg = "FA2 PS Voltage 1";
    else if (*errCode == 232) errMsg = "FA2 PS Voltage 2";
    else if (*errCode == 241) errMsg = "FA2 Heat Sink Temp";
    else if (*errCode == 242) errMsg = "FA2 Thermostat";
    else if (*errCode == 251) errMsg = "FA2 Fan Spd";
    
    else if (*errCode == 301) errMsg = "FA3 Current 1";
    else if (*errCode == 302) errMsg = "FA3 Current 2";
    else if (*errCode == 303) errMsg = "FA3 Current 3";
    else if (*errCode == 304) errMsg = "FA3 Current 4";
    else if (*errCode == 305) errMsg = "FA3 Current 5";
    else if (*errCode == 306) errMsg = "FA3 Current 6";
    else if (*errCode == 307) errMsg = "FA3 Current 7";
    else if (*errCode == 308) errMsg = "FA3 Current 8";
    else if (*errCode == 309) errMsg = "FA3 Current 9";
    else if (*errCode == 310) errMsg = "FA3 Current 10";
    else if (*errCode == 311) errMsg = "FA3 Drive Amp Current";
    else if (*errCode == 321) errMsg = "FA3 Module Power1";
    else if (*errCode == 322) errMsg = "FA3 Module Power2";
    else if (*errCode == 323) errMsg = "FA3 Module Power3";
    else if (*errCode == 324) errMsg = "FA3 Module Power4";
    else if (*errCode == 325) errMsg = "FA3 Module Power5";
    else if (*errCode == 322) errMsg = "FA Unit1-2 PS Voltage";
    else if (*errCode == 331) errMsg = "FA3 PS Voltage 1";
    else if (*errCode == 332) errMsg = "FA3 PS Voltage 2";
    else if (*errCode == 341) errMsg = "FA3 Heat Sink Temp";
    else if (*errCode == 342) errMsg = "FA3 Thermostat";
    else if (*errCode == 351) errMsg = "FA3 Fan Spd";
    
    else if (*errCode == 401) errMsg = "FA4 Current 1";
    else if (*errCode == 402) errMsg = "FA4 Current 2";
    else if (*errCode == 403) errMsg = "FA4 Current 3";
    else if (*errCode == 404) errMsg = "FA4 Current 4";
    else if (*errCode == 405) errMsg = "FA4 Current 5";
    else if (*errCode == 406) errMsg = "FA4 Current 6";
    else if (*errCode == 407) errMsg = "FA4 Current 7";
    else if (*errCode == 408) errMsg = "FA4 Current 8";
    else if (*errCode == 409) errMsg = "FA4 Current 9";
    else if (*errCode == 410) errMsg = "FA4 Current 10";
    else if (*errCode == 411) errMsg = "FA4 Drive Amp Current";
    else if (*errCode == 421) errMsg = "FA4 Module Power1";
    else if (*errCode == 422) errMsg = "FA4 Module Power2";
    else if (*errCode == 423) errMsg = "FA4 Module Power3";
    else if (*errCode == 424) errMsg = "FA4 Module Power4";
    else if (*errCode == 425) errMsg = "FA4 Module Power5";
    else if (*errCode == 422) errMsg = "FA Unit1-2 PS Voltage";
    else if (*errCode == 431) errMsg = "FA4 PS Voltage 1";
    else if (*errCode == 432) errMsg = "FA4 PS Voltage 2";
    else if (*errCode == 441) errMsg = "FA4 Heat Sink Temp";
    else if (*errCode == 442) errMsg = "FA4 Thermostat";
    else if (*errCode == 451) errMsg = "FA4 Fan Spd";
    
    else if (*errCode == 501) errMsg = "Input Drive Power 1";
    else if (*errCode == 502) errMsg = "Forward Power 1";
    else if (*errCode == 503) errMsg = "Reflected Power 1";
    else if (*errCode == 504) errMsg = "Input Drive Power 2";
    else if (*errCode == 505) errMsg = "Forward Power 2";
    else if (*errCode == 506) errMsg = "Reflected Power 2";
    else if (*errCode == 507) errMsg = "Pre Amp Current 1";
    else if (*errCode == 508) errMsg = "Pre Amp Current 2";
    else if (*errCode == 509) errMsg = "+12 Volts";
    else if (*errCode == 510) errMsg = "-12 Volts";
    else if (*errCode == 511) errMsg = "Ext. Fault No.1 24V Permit Line";
    else if (*errCode == 512) errMsg = "Ext. Fault No.2 24V Permit Line";
    //else if (*errCode == 513) errMsg = "Ext. Fault 1 & 2 24V Permit Line";
    else if (*errCode == 514) errMsg = "Ext. Fault No.3 24V Permit Line";
    //else if (*errCode == 515) errMsg = "Ext. Fault 1 & 3 24V Permit Line";
    //else if (*errCode == 516) errMsg = "Ext. Fault 2 & 3 24V Permit Line";
    //else if (*errCode == 517) errMsg = "Ext. Fault 1,2,3 24V Permit Line";
    else if (*errCode == 518) errMsg = "Ext. Fault No.4 24V Permit Line";
    //else if (*errCode == 519) errMsg = "Ext. Fault 1 & 4 24V Permit Line";
    //else if (*errCode == 520) errMsg = "Ext. Fault 2 & 4 24V Permit Line";
    //else if (*errCode == 521) errMsg = "Ext. Fault 1,2,4 24V Permit Line";
    //else if (*errCode == 522) errMsg = "Ext. Fault 3 & 4 24V Permit Line";
    //else if (*errCode == 523) errMsg = "Ext. Fault 1,3,4 24V Permit Line";
    //else if (*errCode == 524) errMsg = "Ext. Fault 2,3,4 24V Permit Line";
    //else if (*errCode == 525) errMsg = "Ext. Fault 1,2,3,4 24V Permit Line";
    else if (*errCode == 521) errMsg = "+24 Volts";
    else if (*errCode == 531) errMsg = "Water Leak Status";
    else if (*errCode == 541) errMsg = "Ctrl Unit Air Temp";
    else if (*errCode == 542) errMsg = "Thermostat Status";
    else if (*errCode == 551) errMsg = "Ctrl Unit Fan Spd";
    else if (*errCode == 552) errMsg = "PreAmp Fan Spd";
    else if (*errCode == 570) errMsg = "120VAC Off or Reboot";
    else if (*errCode == 580) errMsg = "480VAC Status";
    else if (*errCode == 590) errMsg = "Processor Fault";
    else errMsg = "Unknown error code";
    
    //printf("errCode=%d, errMsg=%s\n", *errCode, errMsg);

    if (errMsg) prec->vala = errMsg;

    return 0;
}

/**************************************************************************/

epicsRegisterFunction(asFaultMsg);
epicsRegisterFunction(asFaultMsg_CA199);
epicsRegisterFunction(asFaultMsg_CA3900);

