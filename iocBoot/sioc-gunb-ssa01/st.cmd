#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "GUNB")
epicsEnvSet("IOC_NAME", "SIOC:GUNB:SSA01")
epicsEnvSet("ASG",      "MCC")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: GUN:GUNB:100:SSA1
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA186.iocsh", "PORT=GUNB_SSA1,P=GUN:GUNB:100:SSA1:,ASG=$(ASG),IP=ssa-gunb-100-1")

# SSA2: GUN:GUNB:100:SSA2
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA186.iocsh", "PORT=GUNB_SSA2,P=GUN:GUNB:100:SSA2:,ASG=$(ASG),IP=ssa-gunb-100-2")


# Load common SSA databases
dbLoadRecords("db/gunCommon.db", "P=GUN:GUNB:100:,ASG=$(ASG)")


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
# SSA1: GUN:GUNB:100:SSA1
seq(seq_ssa_RK_CA, "P=GUN:GUNB:100:SSA1:")
epicsThreadSleep(0.25)

# SSA2: GUN:GUNB:100:SSA2
seq(seq_ssa_RK_CA, "P=GUN:GUNB:100:SSA2:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

