#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 2")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA2")
epicsEnvSet("ASG",      "DEFAULT")

< $(TOP)/iocBoot/common/st.cmd.soft

# Reset access security
#asSetFilename("${TOP}/iocBoot/common/srf_permit_test.acf")
asSetFilename("${TOP}/iocBoot/common/no_security.acf")

## Run IOC shell script for each SSA
#
# SSA1: L1B:0220
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0220,P=ACCL:L1B:0220:SSA:,CM=02,CAV1=2,ASG=$(ASG),IP=ssa-b15-rf0120")


iocInit()

# =====================================================
# Turn on caPutLogging:
# Log values only on change to the iocLogServer:
caPutLogInit("${EPICS_CA_PUT_LOG_ADDR}")
caPutLogShow(2)
# =====================================================

dbpf("ACCL:L1B:0220:SSA:SeqDebug", 1)
epicsThreadSleep(0.5)

## Start sequence programs, one for each SSA
# This must be done after iocInit
#
# SSA1: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0220:SSA:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

