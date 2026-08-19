#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 40-42")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA02")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA25: L4B:4010
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4010,P=ACCL:L4B:4010:SSA:,CM=40,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4010")

# SSA26: L4B:4020
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4020,P=ACCL:L4B:4020:SSA:,CM=40,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4020")

# SSA27: L4B:4030
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4030,P=ACCL:L4B:4030:SSA:,CM=40,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4030")

# SSA28: L4B:4040
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4040,P=ACCL:L4B:4040:SSA:,CM=40,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4040")

# SSA29: L4B:4050
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4050,P=ACCL:L4B:4050:SSA:,CM=40,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4050")

# SSA30: L4B:4060
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4060,P=ACCL:L4B:4060:SSA:,CM=40,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4060")

# SSA31: L4B:4070
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4070,P=ACCL:L4B:4070:SSA:,CM=40,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4070")

# SSA32: L4B:4080
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4080,P=ACCL:L4B:4080:SSA:,CM=40,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4080")

# SSA1: L4B:4110
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4110,P=ACCL:L4B:4110:SSA:,CM=41,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4110")

# SSA2: L4B:4120
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4120,P=ACCL:L4B:4120:SSA:,CM=41,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4120")

# SSA3: L4B:4130
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4130,P=ACCL:L4B:4130:SSA:,CM=41,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4130")

# SSA4: L4B:4140
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4140,P=ACCL:L4B:4140:SSA:,CM=41,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4140")

# SSA5: L4B:4150
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4150,P=ACCL:L4B:4150:SSA:,CM=41,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4150")

# SSA6: L4B:4160
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4160,P=ACCL:L4B:4160:SSA:,CM=41,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4160")

# SSA7: L4B:4170
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4170,P=ACCL:L4B:4170:SSA:,CM=41,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4170")

# SSA8: L4B:4180
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4180,P=ACCL:L4B:4180:SSA:,CM=41,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4180")

# SSA9: L4B:4210
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4210,P=ACCL:L4B:4210:SSA:,CM=42,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4210")

# SSA10: L4B:4220
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4220,P=ACCL:L4B:4220:SSA:,CM=42,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4220")

# SSA11: L4B:4230
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4230,P=ACCL:L4B:4230:SSA:,CM=42,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4230")

# SSA12: L4B:4240
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4240,P=ACCL:L4B:4240:SSA:,CM=42,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4240")

# SSA13: L4B:4250
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4250,P=ACCL:L4B:4250:SSA:,CM=42,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4250")

# SSA14: L4B:4260
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4260,P=ACCL:L4B:4260:SSA:,CM=42,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4260")

# SSA15: L4B:4270
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4270,P=ACCL:L4B:4270:SSA:,CM=42,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4270")

# SSA16: L4B:4280
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4280,P=ACCL:L4B:4280:SSA:,CM=42,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4280")

# SSA17: L4B:4310
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4310,P=ACCL:L4B:4310:SSA:,CM=43,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4310")

# SSA18: L4B:4320
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4320,P=ACCL:L4B:4320:SSA:,CM=43,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4320")

# SSA19: L4B:4330
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4330,P=ACCL:L4B:4330:SSA:,CM=43,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4330")

# SSA20: L4B:4340
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4340,P=ACCL:L4B:4340:SSA:,CM=43,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4340")

# SSA21: L4B:4350
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4350,P=ACCL:L4B:4350:SSA:,CM=43,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4350")

# SSA22: L4B:4360
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4360,P=ACCL:L4B:4360:SSA:,CM=43,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4360")

# SSA23: L4B:4370
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4370,P=ACCL:L4B:4370:SSA:,CM=43,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4370")

# SSA24: L4B:4380
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4380,P=ACCL:L4B:4380:SSA:,CM=43,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4380")

# SSA25: L4B:4410
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4410,P=ACCL:L4B:4410:SSA:,CM=44,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4410")

# SSA26: L4B:4420
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4420,P=ACCL:L4B:4420:SSA:,CM=44,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4420")

# SSA27: L4B:4430
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4430,P=ACCL:L4B:4430:SSA:,CM=44,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4430")

# SSA28: L4B:4440
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4440,P=ACCL:L4B:4440:SSA:,CM=44,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4440")

# SSA29: L4B:4450
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4450,P=ACCL:L4B:4450:SSA:,CM=44,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4450")

# SSA30: L4B:4460
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4460,P=ACCL:L4B:4460:SSA:,CM=44,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4460")

# SSA31: L4B:4470
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4470,P=ACCL:L4B:4470:SSA:,CM=44,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4470")

# SSA32: L4B:4480
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4480,P=ACCL:L4B:4480:SSA:,CM=44,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4480")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=40,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=41,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=42,ASG=$(ASG)")


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
# SSA25: L4B:4010
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4010:SSA:")
epicsThreadSleep(0.25)

# SSA26: L4B:4020
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4020:SSA:")
epicsThreadSleep(0.25)

# SSA27: L4B:4030
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4030:SSA:")
epicsThreadSleep(0.25)

# SSA28: L4B:4040
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4040:SSA:")
epicsThreadSleep(0.25)

# SSA29: L4B:4050
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4050:SSA:")
epicsThreadSleep(0.25)

# SSA30: L4B:4060
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4060:SSA:")
epicsThreadSleep(0.25)

# SSA31: L4B:4070
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4070:SSA:")
epicsThreadSleep(0.25)

# SSA32: L4B:4080
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4080:SSA:")
epicsThreadSleep(0.25)

# SSA1: L4B:4110
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4110:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:4120
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4120:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:4130
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4130:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:4140
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4140:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:4150
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4150:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:4160
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4160:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:4170
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4170:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:4180
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4180:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:4210
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4210:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:4220
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4220:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:4230
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4230:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:4240
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4240:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:4250
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4250:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:4260
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4260:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:4270
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4270:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:4280
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4280:SSA:")
epicsThreadSleep(0.25)



# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

