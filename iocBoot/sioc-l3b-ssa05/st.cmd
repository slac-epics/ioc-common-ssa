#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L3B CM 32-35")
epicsEnvSet("IOC_NAME", "SIOC:L3B:SSA05")
epicsEnvSet("ASG",      "MCC")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L3B:3210
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3210,P=ACCL:L3B:3210:SSA:,CM=32,CAV1=1,ASG=$(ASG),IP=ssa-l3b-3210")

# SSA2: L3B:3220
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3220,P=ACCL:L3B:3220:SSA:,CM=32,CAV1=2,ASG=$(ASG),IP=ssa-l3b-3220")

# SSA3: L3B:3230
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3230,P=ACCL:L3B:3230:SSA:,CM=32,CAV1=3,ASG=$(ASG),IP=ssa-l3b-3230")

# SSA4: L3B:3240
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3240,P=ACCL:L3B:3240:SSA:,CM=32,CAV1=4,ASG=$(ASG),IP=ssa-l3b-3240")

# SSA5: L3B:3250
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3250,P=ACCL:L3B:3250:SSA:,CM=32,CAV1=5,ASG=$(ASG),IP=ssa-l3b-3250")

# SSA6: L3B:3260
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3260,P=ACCL:L3B:3260:SSA:,CM=32,CAV1=6,ASG=$(ASG),IP=ssa-l3b-3260")

# SSA7: L3B:3270
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3270,P=ACCL:L3B:3270:SSA:,CM=32,CAV1=7,ASG=$(ASG),IP=ssa-l3b-3270")

# SSA8: L3B:3280
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3280,P=ACCL:L3B:3280:SSA:,CM=32,CAV1=8,ASG=$(ASG),IP=ssa-l3b-3280")

# SSA9: L3B:3310
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3310,P=ACCL:L3B:3310:SSA:,CM=33,CAV1=1,ASG=$(ASG),IP=ssa-l3b-3310")

# SSA10: L3B:3320
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3320,P=ACCL:L3B:3320:SSA:,CM=33,CAV1=2,ASG=$(ASG),IP=ssa-l3b-3320")

# SSA11: L3B:3330
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3330,P=ACCL:L3B:3330:SSA:,CM=33,CAV1=3,ASG=$(ASG),IP=ssa-l3b-3330")

# SSA12: L3B:3340
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3340,P=ACCL:L3B:3340:SSA:,CM=33,CAV1=4,ASG=$(ASG),IP=ssa-l3b-3340")

# SSA13: L3B:3350
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3350,P=ACCL:L3B:3350:SSA:,CM=33,CAV1=5,ASG=$(ASG),IP=ssa-l3b-3350")

# SSA14: L3B:3360
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3360,P=ACCL:L3B:3360:SSA:,CM=33,CAV1=6,ASG=$(ASG),IP=ssa-l3b-3360")

# SSA15: L3B:3370
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3370,P=ACCL:L3B:3370:SSA:,CM=33,CAV1=7,ASG=$(ASG),IP=ssa-l3b-3370")

# SSA16: L3B:3380
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3380,P=ACCL:L3B:3380:SSA:,CM=33,CAV1=8,ASG=$(ASG),IP=ssa-l3b-3380")

# SSA17: L3B:3410
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3410,P=ACCL:L3B:3410:SSA:,CM=34,CAV1=1,ASG=$(ASG),IP=ssa-l3b-3410")

# SSA18: L3B:3420
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3420,P=ACCL:L3B:3420:SSA:,CM=34,CAV1=2,ASG=$(ASG),IP=ssa-l3b-3420")

# SSA19: L3B:3430
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3430,P=ACCL:L3B:3430:SSA:,CM=34,CAV1=3,ASG=$(ASG),IP=ssa-l3b-3430")

# SSA20: L3B:3440
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3440,P=ACCL:L3B:3440:SSA:,CM=34,CAV1=4,ASG=$(ASG),IP=ssa-l3b-3440")

# SSA21: L3B:3450
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3450,P=ACCL:L3B:3450:SSA:,CM=34,CAV1=5,ASG=$(ASG),IP=ssa-l3b-3450")

# SSA22: L3B:3460
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L3B_3460,P=ACCL:L3B:3460:SSA:,CM=34,CAV1=6,ASG=$(ASG),IP=ssa-l3b-3460")

# SSA23: L3B:3470
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L3B_3470,P=ACCL:L3B:3470:SSA:,CM=34,CAV1=7,ASG=$(ASG),IP=ssa-l3b-3470")

# SSA24: L3B:3480
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L3B_3480,P=ACCL:L3B:3480:SSA:,CM=34,CAV1=8,ASG=$(ASG),IP=ssa-l3b-3480")

# SSA25: L3B:3510
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L3B_3510,P=ACCL:L3B:3510:SSA:,CM=35,CAV1=1,ASG=$(ASG),IP=ssa-l3b-3510")

# SSA26: L3B:3520
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L3B_3520,P=ACCL:L3B:3520:SSA:,CM=35,CAV1=2,ASG=$(ASG),IP=ssa-l3b-3520")

# SSA27: L3B:3530
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L3B_3530,P=ACCL:L3B:3530:SSA:,CM=35,CAV1=3,ASG=$(ASG),IP=ssa-l3b-3530")

# SSA28: L3B:3540
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L3B_3540,P=ACCL:L3B:3540:SSA:,CM=35,CAV1=4,ASG=$(ASG),IP=ssa-l3b-3540")

# SSA29: L3B:3550
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L3B_3550,P=ACCL:L3B:3550:SSA:,CM=35,CAV1=5,ASG=$(ASG),IP=ssa-l3b-3550")

# SSA30: L3B:3560
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L3B_3560,P=ACCL:L3B:3560:SSA:,CM=35,CAV1=6,ASG=$(ASG),IP=ssa-l3b-3560")

# SSA31: L3B:3570
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L3B_3570,P=ACCL:L3B:3570:SSA:,CM=35,CAV1=7,ASG=$(ASG),IP=ssa-l3b-3570")

# SSA32: L3B:3580
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L3B_3580,P=ACCL:L3B:3580:SSA:,CM=35,CAV1=8,ASG=$(ASG),IP=ssa-l3b-3580")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=32,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=33,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=34,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=35,ASG=$(ASG)")


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
# SSA1: L3B:3210
seq(seq_ssa_CA1300, "P=ACCL:L3B:3210:SSA:")
epicsThreadSleep(0.25)

# SSA2: L3B:3220
seq(seq_ssa_CA1300, "P=ACCL:L3B:3220:SSA:")
epicsThreadSleep(0.25)

# SSA3: L3B:3230
seq(seq_ssa_CA1300, "P=ACCL:L3B:3230:SSA:")
epicsThreadSleep(0.25)

# SSA4: L3B:3240
seq(seq_ssa_CA1300, "P=ACCL:L3B:3240:SSA:")
epicsThreadSleep(0.25)

# SSA5: L3B:3250
seq(seq_ssa_CA1300, "P=ACCL:L3B:3250:SSA:")
epicsThreadSleep(0.25)

# SSA6: L3B:3260
seq(seq_ssa_CA1300, "P=ACCL:L3B:3260:SSA:")
epicsThreadSleep(0.25)

# SSA7: L3B:3270
seq(seq_ssa_CA1300, "P=ACCL:L3B:3270:SSA:")
epicsThreadSleep(0.25)

# SSA8: L3B:3280
seq(seq_ssa_CA1300, "P=ACCL:L3B:3280:SSA:")
epicsThreadSleep(0.25)

# SSA9: L3B:3310
seq(seq_ssa_CA1300, "P=ACCL:L3B:3310:SSA:")
epicsThreadSleep(0.25)

# SSA10: L3B:3320
seq(seq_ssa_CA1300, "P=ACCL:L3B:3320:SSA:")
epicsThreadSleep(0.25)

# SSA11: L3B:3330
seq(seq_ssa_CA1300, "P=ACCL:L3B:3330:SSA:")
epicsThreadSleep(0.25)

# SSA12: L3B:3340
seq(seq_ssa_CA1300, "P=ACCL:L3B:3340:SSA:")
epicsThreadSleep(0.25)

# SSA13: L3B:3350
seq(seq_ssa_CA1300, "P=ACCL:L3B:3350:SSA:")
epicsThreadSleep(0.25)

# SSA14: L3B:3360
seq(seq_ssa_CA1300, "P=ACCL:L3B:3360:SSA:")
epicsThreadSleep(0.25)

# SSA15: L3B:3370
seq(seq_ssa_CA1300, "P=ACCL:L3B:3370:SSA:")
epicsThreadSleep(0.25)

# SSA16: L3B:3380
seq(seq_ssa_CA1300, "P=ACCL:L3B:3380:SSA:")
epicsThreadSleep(0.25)

# SSA17: L3B:3410
seq(seq_ssa_CA1300, "P=ACCL:L3B:3410:SSA:")
epicsThreadSleep(0.25)

# SSA18: L3B:3420
seq(seq_ssa_CA1300, "P=ACCL:L3B:3420:SSA:")
epicsThreadSleep(0.25)

# SSA19: L3B:3430
seq(seq_ssa_CA1300, "P=ACCL:L3B:3430:SSA:")
epicsThreadSleep(0.25)

# SSA20: L3B:3440
seq(seq_ssa_CA1300, "P=ACCL:L3B:3440:SSA:")
epicsThreadSleep(0.25)

# SSA21: L3B:3450
seq(seq_ssa_CA1300, "P=ACCL:L3B:3450:SSA:")
epicsThreadSleep(0.25)

# SSA22: L3B:3460
seq(seq_ssa_CA1300, "P=ACCL:L3B:3460:SSA:")
epicsThreadSleep(0.25)

# SSA23: L3B:3470
seq(seq_ssa_CA1300, "P=ACCL:L3B:3470:SSA:")
epicsThreadSleep(0.25)

# SSA24: L3B:3480
seq(seq_ssa_CA1300, "P=ACCL:L3B:3480:SSA:")
epicsThreadSleep(0.25)

# SSA25: L3B:3510
seq(seq_ssa_CA1300, "P=ACCL:L3B:3510:SSA:")
epicsThreadSleep(0.25)

# SSA26: L3B:3520
seq(seq_ssa_CA1300, "P=ACCL:L3B:3520:SSA:")
epicsThreadSleep(0.25)

# SSA27: L3B:3530
seq(seq_ssa_CA1300, "P=ACCL:L3B:3530:SSA:")
epicsThreadSleep(0.25)

# SSA28: L3B:3540
seq(seq_ssa_CA1300, "P=ACCL:L3B:3540:SSA:")
epicsThreadSleep(0.25)

# SSA29: L3B:3550
seq(seq_ssa_CA1300, "P=ACCL:L3B:3550:SSA:")
epicsThreadSleep(0.25)

# SSA30: L3B:3560
seq(seq_ssa_CA1300, "P=ACCL:L3B:3560:SSA:")
epicsThreadSleep(0.25)

# SSA31: L3B:3570
seq(seq_ssa_CA1300, "P=ACCL:L3B:3570:SSA:")
epicsThreadSleep(0.25)

# SSA32: L3B:3580
seq(seq_ssa_CA1300, "P=ACCL:L3B:3580:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

