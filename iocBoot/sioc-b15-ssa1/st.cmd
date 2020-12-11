#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 1")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA1")

< $(TOP)/iocBoot/common/st.cmd.soft

## Run IOC shell script for each SSA
#
# SSA1: L1B:0210
# 4.6 kW
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L1B_0210, P=ACCL:L1B:0210:SSA:, IP=ssa-b15-rf0110")
# 7 kW
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0210, P=ACCL:L1B:0210:SSA:, IP=ssa-b15-rf0110")


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
# SSA1: L1B:0210
seq(seq_ssa_CA1300, "P=ACCL:L1B:0210:SSA:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

