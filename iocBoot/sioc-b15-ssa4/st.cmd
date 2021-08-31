#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 4")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA4")

< $(TOP)/iocBoot/common/st.cmd.soft

## Run IOC shell script for each SSA
#
# SSA4: L1B:H240
# 3.9 GHz (HL)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H240, P=ACCL:L1B:H240:SSA:, IP=ssa-b15-rf0140")


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
# SSA1: L1B:H240
seq(seq_ssa_CA1300, "P=ACCL:L1B:H240:SSA:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

