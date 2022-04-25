#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 3")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA3")
epicsEnvSet("ASG",      "DEFAULT")

< $(TOP)/iocBoot/common/st.cmd.soft

# Set access security
asSetFilename("${TOP}/iocBoot/common/no_security.acf")

## Run IOC shell script for each SSA
#
# SSA1: SSA3:B15
# Gun SSA (CA186)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA186.iocsh", "PORT=SSA3,P=SSA3:B15:,ASG=$(ASG),IP=ssa-b15-rf0130")


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
# SSA1: SSA3:B15
seq(seq_ssa_RK_CA, "P=SSA3:B15:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

dbpf("SSA3:B15:SeqDebug", 1)

# End of file

