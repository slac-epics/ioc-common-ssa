#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L0B CM 01")
epicsEnvSet("IOC_NAME", "SIOC:L0B:SSA01")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L0B:0110
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0110, P=ACCL:L0B:0110:SSA:, IP=ssa-l0b-0110")

# SSA2: L0B:0120
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0120, P=ACCL:L0B:0120:SSA:, IP=ssa-l0b-0120")

# SSA3: L0B:0130
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0130, P=ACCL:L0B:0130:SSA:, IP=ssa-l0b-0130")

# SSA4: L0B:0140
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0140, P=ACCL:L0B:0140:SSA:, IP=ssa-l0b-0140")

# SSA5: L0B:0150
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0150, P=ACCL:L0B:0150:SSA:, IP=ssa-l0b-0150")

# SSA6: L0B:0160
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0160, P=ACCL:L0B:0160:SSA:, IP=ssa-l0b-0160")

# SSA7: L0B:0170
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0170, P=ACCL:L0B:0170:SSA:, IP=ssa-l0b-0170")

# SSA8: L0B:0180
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L0B_0180, P=ACCL:L0B:0180:SSA:, IP=ssa-l0b-0180")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L0B:, M=01")

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
# SSA1: L0B:0110
seq(seq_ssa_CA1300, "P=ACCL:L0B:0110:SSA:")
epicsThreadSleep(0.25)

# SSA2: L0B:0120
seq(seq_ssa_CA1300, "P=ACCL:L0B:0120:SSA:")
epicsThreadSleep(0.25)

# SSA3: L0B:0130
seq(seq_ssa_CA1300, "P=ACCL:L0B:0130:SSA:")
epicsThreadSleep(0.25)

# SSA4: L0B:0140
seq(seq_ssa_CA1300, "P=ACCL:L0B:0140:SSA:")
epicsThreadSleep(0.25)

# SSA5: L0B:0150
seq(seq_ssa_CA1300, "P=ACCL:L0B:0150:SSA:")
epicsThreadSleep(0.25)

# SSA6: L0B:0160
seq(seq_ssa_CA1300, "P=ACCL:L0B:0160:SSA:")
epicsThreadSleep(0.25)

# SSA7: L0B:0170
seq(seq_ssa_CA1300, "P=ACCL:L0B:0170:SSA:")
epicsThreadSleep(0.25)

# SSA8: L0B:0180
seq(seq_ssa_CA1300, "P=ACCL:L0B:0180:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

