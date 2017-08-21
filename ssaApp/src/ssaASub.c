 /* Collection of aSub subroutines...
 *----------------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
//#include <time.h>
//#include <sys/time.h>
//#include <dbDefs.h>
#include <alarm.h>
#include <registryFunction.h>
#include <aSubRecord.h>
#include <epicsExport.h>
//#include <stdlib.h>

static long asFaultMsg(aSubRecord *pr){
/*------------------------------------------------------------------------------
Takes an integer error code as input, and displays a string message as output.
- Since we're using a strinout record for the output, output messages should be 
    < 40 chars; otherwise we should use a waveform record.
 *----------------------------------------------------------------------------*/
    unsigned int *errCode = (unsigned int *)pr->a;
    char *errMsg;

    if (*errCode == 0) errMsg = "No error";
    else if (*errCode ==   1) errMsg = "DA Unit-1 Current";
    else if (*errCode ==   2) errMsg = "DA Unit-2 Current";
    else if (*errCode ==  21) errMsg = "DA Unit-1 PS Voltage";
    else if (*errCode ==  22) errMsg = "DA Unit-2 PS Voltage";
    else if (*errCode ==  31) errMsg = "DA Unit Heat Sink Temp";
    else if (*errCode ==  41) errMsg = "DA Unit Fan Rot. Speed";
    else if (*errCode == 101) errMsg = "FA Unit-1 Current";
    else if (*errCode == 511) errMsg = "Ext. Fault No.1 24V Permit Line";
    else if (*errCode == 512) errMsg = "Ext. Fault No.2 24V Permit Line";
    else if (*errCode == 514) errMsg = "Ext. Fault No.3 24V Permit Line";
    else if (*errCode == 518) errMsg = "Ext. Fault No.4 24V Permit Line";
    else errMsg = "Unknown error code";
    
    //printf("errCode=%d, errMsg=%s\n", *errCode, errMsg);

    if (errMsg) pr->vala = errMsg;

    return(0);
}
/**************************************************************************/

epicsRegisterFunction(asFaultMsg);

