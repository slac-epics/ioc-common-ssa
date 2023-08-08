#!../../bin/rhel7-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "GUNB")
epicsEnvSet("IOC_NAME", "SIOC:GUNB:SSA02")
epicsEnvSet("ASG",      "MCC")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: ACCL:GUNB:455:SSA1
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=BUN_SSA1,P=ACCL:GUNB:455:SSA1:,ASG=$(ASG),IP=ssa-gunb-455-1")

# SSA2: ACCL:GUNB:455:SSA2
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=BUN_SSA2,P=ACCL:GUNB:455:SSA2:,ASG=$(ASG),IP=ssa-gunb-455-2")

# SSA3: ACCL:GUNB:455:SSA3
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=BUN_SSA3,P=ACCL:GUNB:455:SSA3:,ASG=$(ASG),IP=ssa-gunb-455-3")

# SSA4: ACCL:GUNB:455:SSA4
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=BUN_SSA4,P=ACCL:GUNB:455:SSA4:,ASG=$(ASG),IP=ssa-gunb-455-4")


# Load common SSA databases
dbLoadRecords("db/buncherCommon.db", "P=ACCL:GUNB:455:,ASG=$(ASG)")


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
# SSA1: ACCL:GUNB:455:SSA1
seq(seq_ssa_RK_CA, "P=ACCL:GUNB:455:SSA1:")
epicsThreadSleep(0.25)

# SSA2: ACCL:GUNB:455:SSA2
seq(seq_ssa_RK_CA, "P=ACCL:GUNB:455:SSA2:")
epicsThreadSleep(0.25)

# SSA3: ACCL:GUNB:455:SSA3
seq(seq_ssa_RK_CA, "P=ACCL:GUNB:455:SSA3:")
epicsThreadSleep(0.25)

# SSA4: ACCL:GUNB:455:SSA4
seq(seq_ssa_RK_CA, "P=ACCL:GUNB:455:SSA4:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

