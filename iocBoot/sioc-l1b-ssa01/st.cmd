#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L0B CM 2-3 & HL 1-2")
epicsEnvSet("IOC_NAME", "SIOC:L1B:SSA01")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L1B:0210
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0210, P=ACCL:L1B:0210:SSA:, IP=ssa-l1b-0210")

# SSA2: L1B:0220
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0220, P=ACCL:L1B:0220:SSA:, IP=ssa-l1b-0220")

# SSA3: L1B:0230
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0230, P=ACCL:L1B:0230:SSA:, IP=ssa-l1b-0230")

# SSA4: L1B:0240
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0240, P=ACCL:L1B:0240:SSA:, IP=ssa-l1b-0240")

# SSA5: L1B:0250
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0250, P=ACCL:L1B:0250:SSA:, IP=ssa-l1b-0250")

# SSA6: L1B:0260
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0260, P=ACCL:L1B:0260:SSA:, IP=ssa-l1b-0260")

# SSA7: L1B:0270
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0270, P=ACCL:L1B:0270:SSA:, IP=ssa-l1b-0270")

# SSA8: L1B:0280
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0280, P=ACCL:L1B:0280:SSA:, IP=ssa-l1b-0280")

# SSA9: L1B:0310
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0310, P=ACCL:L1B:0310:SSA:, IP=ssa-l1b-0310")

# SSA10: L1B:0320
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0320, P=ACCL:L1B:0320:SSA:, IP=ssa-l1b-0320")

# SSA11: L1B:0330
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0330, P=ACCL:L1B:0330:SSA:, IP=ssa-l1b-0330")

# SSA12: L1B:0340
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0340, P=ACCL:L1B:0340:SSA:, IP=ssa-l1b-0340")

# SSA13: L1B:0350
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0350, P=ACCL:L1B:0350:SSA:, IP=ssa-l1b-0350")

# SSA14: L1B:0360
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0360, P=ACCL:L1B:0360:SSA:, IP=ssa-l1b-0360")

# SSA15: L1B:0370
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0370, P=ACCL:L1B:0370:SSA:, IP=ssa-l1b-0370")

# SSA16: L1B:0380
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0380, P=ACCL:L1B:0380:SSA:, IP=ssa-l1b-0380")

# SSA17: L1B:H110
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H110, P=ACCL:L1B:H110:SSA:, IP=ssa-l1b-h110")

# SSA18: L1B:H120
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H120, P=ACCL:L1B:H120:SSA:, IP=ssa-l1b-h120")

# SSA19: L1B:H130
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H130, P=ACCL:L1B:H130:SSA:, IP=ssa-l1b-h130")

# SSA20: L1B:H140
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H140, P=ACCL:L1B:H140:SSA:, IP=ssa-l1b-h140")

# SSA21: L1B:H210
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H210, P=ACCL:L1B:H210:SSA:, IP=ssa-l1b-h210")

# SSA22: L1B:H220
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H220, P=ACCL:L1B:H220:SSA:, IP=ssa-l1b-h220")

# SSA23: L1B:H230
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H230, P=ACCL:L1B:H230:SSA:, IP=ssa-l1b-h230")

# SSA24: L1B:H240
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA3900.iocsh", "PORT=L1B_H240, P=ACCL:L1B:H240:SSA:, IP=ssa-l1b-h240")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L1B:, M=02")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L1B:, M=03")
dbLoadRecords("db/hlCommon.db", "P=ACCL:L1B:, M=H1")
dbLoadRecords("db/hlCommon.db", "P=ACCL:L1B:, M=H2")


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
epicsThreadSleep(0.25)

# SSA2: L1B:0220
seq(seq_ssa_CA1300, "P=ACCL:L1B:0220:SSA:")
epicsThreadSleep(0.25)

# SSA3: L1B:0230
seq(seq_ssa_CA1300, "P=ACCL:L1B:0230:SSA:")
epicsThreadSleep(0.25)

# SSA4: L1B:0240
seq(seq_ssa_CA1300, "P=ACCL:L1B:0240:SSA:")
epicsThreadSleep(0.25)

# SSA5: L1B:0250
seq(seq_ssa_CA1300, "P=ACCL:L1B:0250:SSA:")
epicsThreadSleep(0.25)

# SSA6: L1B:0260
seq(seq_ssa_CA1300, "P=ACCL:L1B:0260:SSA:")
epicsThreadSleep(0.25)

# SSA7: L1B:0270
seq(seq_ssa_CA1300, "P=ACCL:L1B:0270:SSA:")
epicsThreadSleep(0.25)

# SSA8: L1B:0280
seq(seq_ssa_CA1300, "P=ACCL:L1B:0280:SSA:")
epicsThreadSleep(0.25)

# SSA9: L1B:0310
seq(seq_ssa_CA1300, "P=ACCL:L1B:0310:SSA:")
epicsThreadSleep(0.25)

# SSA10: L1B:0320
seq(seq_ssa_CA1300, "P=ACCL:L1B:0320:SSA:")
epicsThreadSleep(0.25)

# SSA11: L1B:0330
seq(seq_ssa_CA1300, "P=ACCL:L1B:0330:SSA:")
epicsThreadSleep(0.25)

# SSA12: L1B:0340
seq(seq_ssa_CA1300, "P=ACCL:L1B:0340:SSA:")
epicsThreadSleep(0.25)

# SSA13: L1B:0350
seq(seq_ssa_CA1300, "P=ACCL:L1B:0350:SSA:")
epicsThreadSleep(0.25)

# SSA14: L1B:0360
seq(seq_ssa_CA1300, "P=ACCL:L1B:0360:SSA:")
epicsThreadSleep(0.25)

# SSA15: L1B:0370
seq(seq_ssa_CA1300, "P=ACCL:L1B:0370:SSA:")
epicsThreadSleep(0.25)

# SSA16: L1B:0380
seq(seq_ssa_CA1300, "P=ACCL:L1B:0380:SSA:")
epicsThreadSleep(0.25)

# SSA17: L1B:H110
seq(seq_ssa_CA3900, "P=ACCL:L1B:H110:SSA:")
epicsThreadSleep(0.25)

# SSA18: L1B:H120
seq(seq_ssa_CA3900, "P=ACCL:L1B:H120:SSA:")
epicsThreadSleep(0.25)

# SSA19: L1B:H130
seq(seq_ssa_CA3900, "P=ACCL:L1B:H130:SSA:")
epicsThreadSleep(0.25)

# SSA20: L1B:H140
seq(seq_ssa_CA3900, "P=ACCL:L1B:H140:SSA:")
epicsThreadSleep(0.25)

# SSA21: L1B:H210
seq(seq_ssa_CA3900, "P=ACCL:L1B:H210:SSA:")
epicsThreadSleep(0.25)

# SSA22: L1B:H220
seq(seq_ssa_CA3900, "P=ACCL:L1B:H220:SSA:")
epicsThreadSleep(0.25)

# SSA23: L1B:H230
seq(seq_ssa_CA3900, "P=ACCL:L1B:H230:SSA:")
epicsThreadSleep(0.25)

# SSA24: L1B:H240
seq(seq_ssa_CA3900, "P=ACCL:L1B:H240:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

