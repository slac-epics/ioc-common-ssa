#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 53-56")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA05")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L4B:5310
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3210,P=ACCL:L4B:5310:SSA:,CM=32,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5310")

# SSA2: L4B:5320
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3220,P=ACCL:L4B:5320:SSA:,CM=32,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5320")

# SSA3: L4B:5330
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3230,P=ACCL:L4B:5330:SSA:,CM=32,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5330")

# SSA4: L4B:5340
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3240,P=ACCL:L4B:5340:SSA:,CM=32,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5340")

# SSA5: L4B:5350
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3250,P=ACCL:L4B:5350:SSA:,CM=32,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5350")

# SSA6: L4B:5360
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3260,P=ACCL:L4B:5360:SSA:,CM=32,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5360")

# SSA7: L4B:5370
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3270,P=ACCL:L4B:5370:SSA:,CM=32,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5370")

# SSA8: L4B:5380
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3280,P=ACCL:L4B:5380:SSA:,CM=32,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5380")

# SSA9: L4B:5410
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3310,P=ACCL:L4B:5410:SSA:,CM=33,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5410")

# SSA10: L4B:5420
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3320,P=ACCL:L4B:5420:SSA:,CM=33,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5420")

# SSA11: L4B:5430
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3330,P=ACCL:L4B:5430:SSA:,CM=33,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5430")

# SSA12: L4B:5440
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3340,P=ACCL:L4B:5440:SSA:,CM=33,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5440")

# SSA13: L4B:5450
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3350,P=ACCL:L4B:5450:SSA:,CM=33,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5450")

# SSA14: L4B:5460
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3360,P=ACCL:L4B:5460:SSA:,CM=33,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5460")

# SSA15: L4B:5470
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3370,P=ACCL:L4B:5470:SSA:,CM=33,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5470")

# SSA16: L4B:5480
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3380,P=ACCL:L4B:5480:SSA:,CM=33,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5480")

# SSA17: L4B:5510
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3410,P=ACCL:L4B:5510:SSA:,CM=34,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5510")

# SSA18: L4B:5520
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3420,P=ACCL:L4B:5520:SSA:,CM=34,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5520")

# SSA19: L4B:5530
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3430,P=ACCL:L4B:5530:SSA:,CM=34,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5530")

# SSA20: L4B:5540
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3440,P=ACCL:L4B:5540:SSA:,CM=34,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5540")

# SSA21: L4B:5550
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3450,P=ACCL:L4B:5550:SSA:,CM=34,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5550")

# SSA22: L4B:5560
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3460,P=ACCL:L4B:5560:SSA:,CM=34,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5560")

# SSA23: L4B:5570
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3470,P=ACCL:L4B:5570:SSA:,CM=34,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5570")

# SSA24: L4B:5580
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3480,P=ACCL:L4B:5580:SSA:,CM=34,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5580")

# SSA25: L4B:5610
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3510,P=ACCL:L4B:5610:SSA:,CM=35,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5610")

# SSA26: L4B:5620
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3520,P=ACCL:L4B:5620:SSA:,CM=35,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5620")

# SSA27: L4B:5630
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3530,P=ACCL:L4B:5630:SSA:,CM=35,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5630")

# SSA28: L4B:5640
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3540,P=ACCL:L4B:5640:SSA:,CM=35,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5640")

# SSA29: L4B:5650
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3550,P=ACCL:L4B:5650:SSA:,CM=35,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5650")

# SSA30: L4B:5660
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3560,P=ACCL:L4B:5660:SSA:,CM=35,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5660")

# SSA31: L4B:5670
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3570,P=ACCL:L4B:5670:SSA:,CM=35,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5670")

# SSA32: L4B:5680
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3580,P=ACCL:L4B:5680:SSA:,CM=35,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5680")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=53,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=54,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=55,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=56,ASG=$(ASG)")


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
# SSA1: L4B:5310
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5310:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:5320
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5320:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:5330
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5330:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:5340
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5340:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:5350
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5350:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:5360
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5360:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:5370
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5370:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:5380
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5380:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:5410
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5410:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:5420
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5420:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:5430
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5430:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:5440
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5440:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:5450
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5450:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:5460
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5460:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:5470
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5470:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:5480
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5480:SSA:")
epicsThreadSleep(0.25)

# SSA17: L4B:5510
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5510:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:5520
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5520:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:5530
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5530:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:5540
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5540:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:5550
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5550:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:5560
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5560:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:5570
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5570:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:5580
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5580:SSA:")
epicsThreadSleep(0.25)

# SSA25: L4B:5610
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5610:SSA:")
epicsThreadSleep(0.25)

# SSA26: L4B:5620
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5620:SSA:")
epicsThreadSleep(0.25)

# SSA27: L4B:5630
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5630:SSA:")
epicsThreadSleep(0.25)

# SSA28: L4B:5640
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5640:SSA:")
epicsThreadSleep(0.25)

# SSA29: L4B:5650
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5650:SSA:")
epicsThreadSleep(0.25)

# SSA30: L4B:5660
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5660:SSA:")
epicsThreadSleep(0.25)

# SSA31: L4B:5670
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5670:SSA:")
epicsThreadSleep(0.25)

# SSA32: L4B:5680
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5680:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

