#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 3")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA3")

< $(TOP)/iocBoot/common/st.cmd.soft

## Run IOC shell script for each SSA
#
# SSA1: SSA3:B15
# Gun SSA (CA186)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA186.iocsh", "PORT=SSA3, P=SSA3:B15:, IP=ssa-b15-rf0130")


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
seq(seq_ssa_CA186, "P=SSA3:B15:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

