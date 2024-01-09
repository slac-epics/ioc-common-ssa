#!../../bin/rhel7-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L3B CM 20-23")
epicsEnvSet("IOC_NAME", "SIOC:L3B:SSA02")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L3B:2010
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2010,P=ACCL:L3B:2010:SSA:,CM=20,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2010")

# SSA2: L3B:2020
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2020,P=ACCL:L3B:2020:SSA:,CM=20,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2020")

# SSA3: L3B:2030
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2030,P=ACCL:L3B:2030:SSA:,CM=20,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2030")

# SSA4: L3B:2040
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2040,P=ACCL:L3B:2040:SSA:,CM=20,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2040")

# SSA5: L3B:2050
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2050,P=ACCL:L3B:2050:SSA:,CM=20,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2050")

# SSA6: L3B:2060
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2060,P=ACCL:L3B:2060:SSA:,CM=20,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2060")

# SSA7: L3B:2070
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2070,P=ACCL:L3B:2070:SSA:,CM=20,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2070")

# SSA8: L3B:2080
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2080,P=ACCL:L3B:2080:SSA:,CM=20,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2080")

# SSA9: L3B:2110
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2110,P=ACCL:L3B:2110:SSA:,CM=21,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2110")

# SSA10: L3B:2120
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2120,P=ACCL:L3B:2120:SSA:,CM=21,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2120")

# SSA11: L3B:2130
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2130,P=ACCL:L3B:2130:SSA:,CM=21,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2130")

# SSA12: L3B:2140
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2140,P=ACCL:L3B:2140:SSA:,CM=21,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2140")

# SSA13: L3B:2150
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2150,P=ACCL:L3B:2150:SSA:,CM=21,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2150")

# SSA14: L3B:2160
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2160,P=ACCL:L3B:2160:SSA:,CM=21,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2160")

# SSA15: L3B:2170
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2170,P=ACCL:L3B:2170:SSA:,CM=21,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2170")

# SSA16: L3B:2180
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2180,P=ACCL:L3B:2180:SSA:,CM=21,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2180")

# SSA17: L3B:2210
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2210,P=ACCL:L3B:2210:SSA:,CM=22,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2210")

# SSA18: L3B:2220
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2220,P=ACCL:L3B:2220:SSA:,CM=22,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2220")

# SSA19: L3B:2230
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2230,P=ACCL:L3B:2230:SSA:,CM=22,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2230")

# SSA20: L3B:2240
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2240,P=ACCL:L3B:2240:SSA:,CM=22,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2240")

# SSA21: L3B:2250
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2250,P=ACCL:L3B:2250:SSA:,CM=22,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2250")

# SSA22: L3B:2260
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2260,P=ACCL:L3B:2260:SSA:,CM=22,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2260")

# SSA23: L3B:2270
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2270,P=ACCL:L3B:2270:SSA:,CM=22,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2270")

# SSA24: L3B:2280
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2280,P=ACCL:L3B:2280:SSA:,CM=22,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2280")

# SSA25: L3B:2310
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2310,P=ACCL:L3B:2310:SSA:,CM=23,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2310")

# SSA26: L3B:2320
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2320,P=ACCL:L3B:2320:SSA:,CM=23,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2320")

# SSA27: L3B:2330
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2330,P=ACCL:L3B:2330:SSA:,CM=23,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2330")

# SSA28: L3B:2340
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2340,P=ACCL:L3B:2340:SSA:,CM=23,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2340")

# SSA29: L3B:2350
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2350,P=ACCL:L3B:2350:SSA:,CM=23,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2350")

# SSA30: L3B:2360
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2360,P=ACCL:L3B:2360:SSA:,CM=23,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2360")

# SSA31: L3B:2370
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2370,P=ACCL:L3B:2370:SSA:,CM=23,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2370")

# SSA32: L3B:2380
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2380,P=ACCL:L3B:2380:SSA:,CM=23,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2380")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=20,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=21,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=22,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=23,ASG=$(ASG)")


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
# SSA1: L3B:2010
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2010:SSA:")
epicsThreadSleep(0.25)

# SSA2: L3B:2020
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2020:SSA:")
epicsThreadSleep(0.25)

# SSA3: L3B:2030
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2030:SSA:")
epicsThreadSleep(0.25)

# SSA4: L3B:2040
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2040:SSA:")
epicsThreadSleep(0.25)

# SSA5: L3B:2050
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2050:SSA:")
epicsThreadSleep(0.25)

# SSA6: L3B:2060
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2060:SSA:")
epicsThreadSleep(0.25)

# SSA7: L3B:2070
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2070:SSA:")
epicsThreadSleep(0.25)

# SSA8: L3B:2080
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2080:SSA:")
epicsThreadSleep(0.25)

# SSA9: L3B:2110
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2110:SSA:")
epicsThreadSleep(0.25)

# SSA10: L3B:2120
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2120:SSA:")
epicsThreadSleep(0.25)

# SSA11: L3B:2130
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2130:SSA:")
epicsThreadSleep(0.25)

# SSA12: L3B:2140
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2140:SSA:")
epicsThreadSleep(0.25)

# SSA13: L3B:2150
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2150:SSA:")
epicsThreadSleep(0.25)

# SSA14: L3B:2160
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2160:SSA:")
epicsThreadSleep(0.25)

# SSA15: L3B:2170
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2170:SSA:")
epicsThreadSleep(0.25)

# SSA16: L3B:2180
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2180:SSA:")
epicsThreadSleep(0.25)

# SSA17: L3B:2210
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2210:SSA:")
epicsThreadSleep(0.25)

# SSA18: L3B:2220
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2220:SSA:")
epicsThreadSleep(0.25)

# SSA19: L3B:2230
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2230:SSA:")
epicsThreadSleep(0.25)

# SSA20: L3B:2240
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2240:SSA:")
epicsThreadSleep(0.25)

# SSA21: L3B:2250
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2250:SSA:")
epicsThreadSleep(0.25)

# SSA22: L3B:2260
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2260:SSA:")
epicsThreadSleep(0.25)

# SSA23: L3B:2270
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2270:SSA:")
epicsThreadSleep(0.25)

# SSA24: L3B:2280
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2280:SSA:")
epicsThreadSleep(0.25)

# SSA25: L3B:2310
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2310:SSA:")
epicsThreadSleep(0.25)

# SSA26: L3B:2320
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2320:SSA:")
epicsThreadSleep(0.25)

# SSA27: L3B:2330
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2330:SSA:")
epicsThreadSleep(0.25)

# SSA28: L3B:2340
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2340:SSA:")
epicsThreadSleep(0.25)

# SSA29: L3B:2350
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2350:SSA:")
epicsThreadSleep(0.25)

# SSA30: L3B:2360
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2360:SSA:")
epicsThreadSleep(0.25)

# SSA31: L3B:2370
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2370:SSA:")
epicsThreadSleep(0.25)

# SSA32: L3B:2380
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2380:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

