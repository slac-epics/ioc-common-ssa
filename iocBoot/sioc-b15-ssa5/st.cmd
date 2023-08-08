#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 5")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA5")
epicsEnvSet("ASG",      "DEFAULT")

< $(TOP)/iocBoot/common/st.cmd.soft

# Set access security
asSetFilename("${TOP}/iocBoot/common/no_security.acf")

## Run IOC shell script for each SSA
#
# SSA1: L1B:0250
# 3.8 kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0250,P=ACCL:L1B:0250:SSA:,CM=02,CAV1=5,ASG=$(ASG),IP=ssa-b15-rf0150")


iocInit()

# =====================================================
# Turn on caPutLogging:
# Log values only on change to the iocLogServer:
caPutLogInit("${EPICS_CA_PUT_LOG_ADDR}")
caPutLogShow(2)
# =====================================================

dbpf("ACCL:L1B:0250:SSA:SeqDebug", 1)
epicsThreadSleep(0.5)

## Start sequence programs, one for each SSA
# This must be done after iocInit
#
# SSA1: L1B:0250
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0250:SSA:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

dbpf("ACCL:L1B:0250:SSA:SeqDebug", 1)

# End of file

