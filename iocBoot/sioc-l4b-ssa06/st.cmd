#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 52-54")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA06")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L4B:5210
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5710,P=ACCL:L4B:5210:SSA:,CM=52,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5210")

# SSA2: L4B:5220
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5720,P=ACCL:L4B:5220:SSA:,CM=52,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5220")

# SSA3: L4B:5230
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5730,P=ACCL:L4B:5230:SSA:,CM=52,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5230")

# SSA4: L4B:5240
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5740,P=ACCL:L4B:5240:SSA:,CM=52,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5240")

# SSA5: L4B:5250
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5750,P=ACCL:L4B:5250:SSA:,CM=52,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5250")

# SSA6: L4B:5260
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5760,P=ACCL:L4B:5260:SSA:,CM=52,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5260")

# SSA7: L4B:5270
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5770,P=ACCL:L4B:5270:SSA:,CM=52,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5270")

# SSA8: L4B:5280
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5780,P=ACCL:L4B:5280:SSA:,CM=52,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5280")

# SSA9: L4B:5310
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5810,P=ACCL:L4B:5310:SSA:,CM=53,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5310")

# SSA10: L4B:5320
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5820,P=ACCL:L4B:5320:SSA:,CM=53,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5320")

# SSA11: L4B:5330
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5830,P=ACCL:L4B:5330:SSA:,CM=53,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5330")

# SSA12: L4B:5340
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5840,P=ACCL:L4B:5340:SSA:,CM=53,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5340")

# SSA13: L4B:5350
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5850,P=ACCL:L4B:5350:SSA:,CM=53,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5350")

# SSA14: L4B:5360
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5860,P=ACCL:L4B:5360:SSA:,CM=53,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5360")

# SSA15: L4B:5370
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5870,P=ACCL:L4B:5370:SSA:,CM=53,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5370")

# SSA16: L4B:5380
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5880,P=ACCL:L4B:5380:SSA:,CM=53,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5380")

# SSA17: L4B:5410
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5910,P=ACCL:L4B:5410:SSA:,CM=54,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5410")

# SSA18: L4B:5420
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5920,P=ACCL:L4B:5420:SSA:,CM=54,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5420")

# SSA19: L4B:5430
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5930,P=ACCL:L4B:5430:SSA:,CM=54,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5430")

# SSA20: L4B:5440
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5940,P=ACCL:L4B:5440:SSA:,CM=54,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5440")

# SSA21: L4B:5450
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5950,P=ACCL:L4B:5450:SSA:,CM=54,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5450")

# SSA22: L4B:5460
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5960,P=ACCL:L4B:5460:SSA:,CM=54,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5460")

# SSA23: L4B:5470
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5970,P=ACCL:L4B:5470:SSA:,CM=54,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5470")

# SSA24: L4B:5480
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5980,P=ACCL:L4B:5480:SSA:,CM=54,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5480")



# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=52,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=53,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=54,ASG=$(ASG)")


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
# SSA1: L4B:5210
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5210:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:5220
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5220:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:5230
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5230:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:5240
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5240:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:5250
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5250:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:5260
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5260:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:5270
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5270:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:5280
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5280:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:5310
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5310:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:5320
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5320:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:5330
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5330:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:5340
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5340:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:5350
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5350:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:5360
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5360:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:5370
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5370:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:5380
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5380:SSA:")
epicsThreadSleep(0.25)

# SSA17: L4B:5410
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5410:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:5420
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5420:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:5430
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5430:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:5440
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5440:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:5450
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5450:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:5460
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5460:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:5470
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5470:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:5480
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5480:SSA:")
epicsThreadSleep(0.25)



# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

