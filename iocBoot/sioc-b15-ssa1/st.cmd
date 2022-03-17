#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 1")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA1")
epicsEnvSet("ASG",      "DEFAULT")

< $(TOP)/iocBoot/common/st.cmd.soft

# Set access security
#asSetFilename("${TOP}/iocBoot/common/srf_permit_test.acf")
asSetFilename("${TOP}/iocBoot/common/no_security.acf")

## Run IOC shell script for each SSA
#
# SSA1: L1B:0210
# 3.8 kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0210,P=ACCL:L1B:0210:SSA:,ASG=$(ASG),IP=ssa-b15-rf0110")

# Load SSA stats database
dbLoadRecords("db/ssa_stats.db")


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

