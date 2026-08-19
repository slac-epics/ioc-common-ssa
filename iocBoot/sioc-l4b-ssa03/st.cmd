#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 43-45")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA03")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
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

# SSA1: L4B:4510
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4510,P=ACCL:L4B:4510:SSA:,CM=45,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4510")

# SSA2: L4B:4520
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4520,P=ACCL:L4B:4520:SSA:,CM=45,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4520")

# SSA3: L4B:4530
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4530,P=ACCL:L4B:4530:SSA:,CM=45,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4530")

# SSA4: L4B:4540
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4540,P=ACCL:L4B:4540:SSA:,CM=45,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4540")

# SSA5: L4B:4550
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4550,P=ACCL:L4B:4550:SSA:,CM=45,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4550")

# SSA6: L4B:4560
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4560,P=ACCL:L4B:4560:SSA:,CM=45,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4560")

# SSA7: L4B:4570
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4570,P=ACCL:L4B:4570:SSA:,CM=45,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4570")

# SSA8: L4B:4580
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4580,P=ACCL:L4B:4580:SSA:,CM=45,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4580")

# SSA9: L4B:4610
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4610,P=ACCL:L4B:4610:SSA:,CM=46,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4610")

# SSA10: L4B:4620
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4620,P=ACCL:L4B:4620:SSA:,CM=46,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4620")

# SSA11: L4B:4630
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4630,P=ACCL:L4B:4630:SSA:,CM=46,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4630")

# SSA12: L4B:4640
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4640,P=ACCL:L4B:4640:SSA:,CM=46,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4640")

# SSA13: L4B:4650
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4650,P=ACCL:L4B:4650:SSA:,CM=46,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4650")

# SSA14: L4B:4660
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4660,P=ACCL:L4B:4660:SSA:,CM=46,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4660")

# SSA15: L4B:4670
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4670,P=ACCL:L4B:4670:SSA:,CM=46,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4670")

# SSA16: L4B:4680
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4680,P=ACCL:L4B:4680:SSA:,CM=46,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4680")

# SSA17: L4B:4710
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4710,P=ACCL:L4B:4710:SSA:,CM=47,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4710")

# SSA18: L4B:4720
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4720,P=ACCL:L4B:4720:SSA:,CM=47,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4720")

# SSA19: L4B:4730
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4730,P=ACCL:L4B:4730:SSA:,CM=47,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4730")

# SSA20: L4B:4740
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4740,P=ACCL:L4B:4740:SSA:,CM=47,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4740")

# SSA21: L4B:4750
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4750,P=ACCL:L4B:4750:SSA:,CM=47,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4750")

# SSA22: L4B:4760
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4760,P=ACCL:L4B:4760:SSA:,CM=47,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4760")

# SSA23: L4B:4770
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4770,P=ACCL:L4B:4770:SSA:,CM=47,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4770")

# SSA24: L4B:4780
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4780,P=ACCL:L4B:4780:SSA:,CM=47,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4780")

# SSA25: L4B:4810
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4810,P=ACCL:L4B:4810:SSA:,CM=48,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4810")

# SSA26: L4B:4820
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4820,P=ACCL:L4B:4820:SSA:,CM=48,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4820")

# SSA27: L4B:4830
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4830,P=ACCL:L4B:4830:SSA:,CM=48,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4830")

# SSA28: L4B:4840
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4840,P=ACCL:L4B:4840:SSA:,CM=48,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4840")

# SSA29: L4B:4850
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4850,P=ACCL:L4B:4850:SSA:,CM=48,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4850")

# SSA30: L4B:4860
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4860,P=ACCL:L4B:4860:SSA:,CM=48,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4860")

# SSA31: L4B:4870
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4870,P=ACCL:L4B:4870:SSA:,CM=48,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4870")

# SSA32: L4B:4880
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4880,P=ACCL:L4B:4880:SSA:,CM=48,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4880")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=43,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=44,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=45,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=46,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=47,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=48,ASG=$(ASG)")


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
# SSA17: L4B:4310
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4310:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:4320
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4320:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:4330
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4330:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:4340
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4340:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:4350
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4350:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:4360
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4360:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:4370
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4370:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:4380
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4380:SSA:")
epicsThreadSleep(0.25)

# SSA25: L4B:4410
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4410:SSA:")
epicsThreadSleep(0.25)

# SSA26: L4B:4420
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4420:SSA:")
epicsThreadSleep(0.25)

# SSA27: L4B:4430
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4430:SSA:")
epicsThreadSleep(0.25)

# SSA28: L4B:4440
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4440:SSA:")
epicsThreadSleep(0.25)

# SSA29: L4B:4450
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4450:SSA:")
epicsThreadSleep(0.25)

# SSA30: L4B:4460
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4460:SSA:")
epicsThreadSleep(0.25)

# SSA31: L4B:4470
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4470:SSA:")
epicsThreadSleep(0.25)

# SSA32: L4B:4480
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4480:SSA:")
epicsThreadSleep(0.25)
# SSA1: L4B:4510
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4510:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:4520
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4520:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:4530
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4530:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:4540
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4540:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:4550
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4550:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:4560
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4560:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:4570
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4570:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:4580
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4580:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:4610
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4610:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:4620
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4620:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:4630
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4630:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:4640
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4640:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:4650
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4650:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:4660
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4660:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:4670
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4670:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:4680
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4680:SSA:")
epicsThreadSleep(0.25)

# SSA17: L4B:4710
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4710:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:4720
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4720:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:4730
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4730:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:4740
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4740:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:4750
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4750:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:4760
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4760:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:4770
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4770:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:4780
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4780:SSA:")
epicsThreadSleep(0.25)

# SSA25: L4B:4810
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4810:SSA:")
epicsThreadSleep(0.25)

# SSA26: L4B:4820
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4820:SSA:")
epicsThreadSleep(0.25)

# SSA27: L4B:4830
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4830:SSA:")
epicsThreadSleep(0.25)

# SSA28: L4B:4840
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4840:SSA:")
epicsThreadSleep(0.25)

# SSA29: L4B:4850
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4850:SSA:")
epicsThreadSleep(0.25)

# SSA30: L4B:4860
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4860:SSA:")
epicsThreadSleep(0.25)

# SSA31: L4B:4870
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4870:SSA:")
epicsThreadSleep(0.25)

# SSA32: L4B:4880
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4880:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

