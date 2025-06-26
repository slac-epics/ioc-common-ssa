#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 7")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA7")
epicsEnvSet("ASG",      "DEFAULT")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L1B:0270
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA186_7kW.iocsh", "PORT=L1B_0270,P=ACCL:L1B:0270:SSA:,CM=02,CAV1=7,ASG=$(ASG),IP=ssa-b15-rf0170")


iocInit()

# =====================================================
# Turn on caPutLogging:
# Log values only on change to the iocLogServer:
caPutLogInit("${EPICS_CA_PUT_LOG_ADDR}")
caPutLogShow(2)
# =====================================================

## Start sequence programs, one for each SSA
# This must be done after iocInit
#
# SSA1: L1B:0270
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0270:SSA:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# Turn on sequencer debug output (for testing)
dbpf("ACCL:L1B:0270:SSA:SeqDebug", 1)

# End of file

