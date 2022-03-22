#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L3B CM 24-27")
epicsEnvSet("IOC_NAME", "SIOC:L3B:SSA03")
epicsEnvSet("ASG",      "MCC")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L3B:2410
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2410,P=ACCL:L3B:2410:SSA:,CM=24,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2410")

# SSA2: L3B:2420
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2420,P=ACCL:L3B:2420:SSA:,CM=24,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2420")

# SSA3: L3B:2430
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2430,P=ACCL:L3B:2430:SSA:,CM=24,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2430")

# SSA4: L3B:2440
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2440,P=ACCL:L3B:2440:SSA:,CM=24,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2440")

# SSA5: L3B:2450
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2450,P=ACCL:L3B:2450:SSA:,CM=24,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2450")

# SSA6: L3B:2460
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2460,P=ACCL:L3B:2460:SSA:,CM=24,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2460")

# SSA7: L3B:2470
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2470,P=ACCL:L3B:2470:SSA:,CM=24,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2470")

# SSA8: L3B:2480
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2480,P=ACCL:L3B:2480:SSA:,CM=24,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2480")

# SSA9: L3B:2510
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2510,P=ACCL:L3B:2510:SSA:,CM=25,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2510")

# SSA10: L3B:2520
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2520,P=ACCL:L3B:2520:SSA:,CM=25,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2520")

# SSA11: L3B:2530
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2530,P=ACCL:L3B:2530:SSA:,CM=25,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2530")

# SSA12: L3B:2540
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2540,P=ACCL:L3B:2540:SSA:,CM=25,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2540")

# SSA13: L3B:2550
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2550,P=ACCL:L3B:2550:SSA:,CM=25,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2550")

# SSA14: L3B:2560
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2560,P=ACCL:L3B:2560:SSA:,CM=25,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2560")

# SSA15: L3B:2570
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2570,P=ACCL:L3B:2570:SSA:,CM=25,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2570")

# SSA16: L3B:2580
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2580,P=ACCL:L3B:2580:SSA:,CM=25,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2580")

# SSA17: L3B:2610
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2610,P=ACCL:L3B:2610:SSA:,CM=26,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2610")

# SSA18: L3B:2620
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2620,P=ACCL:L3B:2620:SSA:,CM=26,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2620")

# SSA19: L3B:2630
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2630,P=ACCL:L3B:2630:SSA:,CM=26,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2630")

# SSA20: L3B:2640
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2640,P=ACCL:L3B:2640:SSA:,CM=26,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2640")

# SSA21: L3B:2650
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2650,P=ACCL:L3B:2650:SSA:,CM=26,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2650")

# SSA22: L3B:2660
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2660,P=ACCL:L3B:2660:SSA:,CM=26,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2660")

# SSA23: L3B:2670
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2670,P=ACCL:L3B:2670:SSA:,CM=26,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2670")

# SSA24: L3B:2680
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2680,P=ACCL:L3B:2680:SSA:,CM=26,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2680")

# SSA25: L3B:2710
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2710,P=ACCL:L3B:2710:SSA:,CM=27,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2710")

# SSA26: L3B:2720
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2720,P=ACCL:L3B:2720:SSA:,CM=27,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2720")

# SSA27: L3B:2730
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2730,P=ACCL:L3B:2730:SSA:,CM=27,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2730")

# SSA28: L3B:2740
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2740,P=ACCL:L3B:2740:SSA:,CM=27,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2740")

# SSA29: L3B:2750
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2750,P=ACCL:L3B:2750:SSA:,CM=27,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2750")

# SSA30: L3B:2760
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2760,P=ACCL:L3B:2760:SSA:,CM=27,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2760")

# SSA31: L3B:2770
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2770,P=ACCL:L3B:2770:SSA:,CM=27,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2770")

# SSA32: L3B:2780
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2780,P=ACCL:L3B:2780:SSA:,CM=27,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2780")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=24,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=25,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=26,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=27,ASG=$(ASG)")


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
# SSA1: L3B:2410
seq(seq_ssa_CA1300, "P=ACCL:L3B:2410:SSA:")
epicsThreadSleep(0.25)

# SSA2: L3B:2420
seq(seq_ssa_CA1300, "P=ACCL:L3B:2420:SSA:")
epicsThreadSleep(0.25)

# SSA3: L3B:2430
seq(seq_ssa_CA1300, "P=ACCL:L3B:2430:SSA:")
epicsThreadSleep(0.25)

# SSA4: L3B:2440
seq(seq_ssa_CA1300, "P=ACCL:L3B:2440:SSA:")
epicsThreadSleep(0.25)

# SSA5: L3B:2450
seq(seq_ssa_CA1300, "P=ACCL:L3B:2450:SSA:")
epicsThreadSleep(0.25)

# SSA6: L3B:2460
seq(seq_ssa_CA1300, "P=ACCL:L3B:2460:SSA:")
epicsThreadSleep(0.25)

# SSA7: L3B:2470
seq(seq_ssa_CA1300, "P=ACCL:L3B:2470:SSA:")
epicsThreadSleep(0.25)

# SSA8: L3B:2480
seq(seq_ssa_CA1300, "P=ACCL:L3B:2480:SSA:")
epicsThreadSleep(0.25)

# SSA9: L3B:2510
seq(seq_ssa_CA1300, "P=ACCL:L3B:2510:SSA:")
epicsThreadSleep(0.25)

# SSA10: L3B:2520
seq(seq_ssa_CA1300, "P=ACCL:L3B:2520:SSA:")
epicsThreadSleep(0.25)

# SSA11: L3B:2530
seq(seq_ssa_CA1300, "P=ACCL:L3B:2530:SSA:")
epicsThreadSleep(0.25)

# SSA12: L3B:2540
seq(seq_ssa_CA1300, "P=ACCL:L3B:2540:SSA:")
epicsThreadSleep(0.25)

# SSA13: L3B:2550
seq(seq_ssa_CA1300, "P=ACCL:L3B:2550:SSA:")
epicsThreadSleep(0.25)

# SSA14: L3B:2560
seq(seq_ssa_CA1300, "P=ACCL:L3B:2560:SSA:")
epicsThreadSleep(0.25)

# SSA15: L3B:2570
seq(seq_ssa_CA1300, "P=ACCL:L3B:2570:SSA:")
epicsThreadSleep(0.25)

# SSA16: L3B:2580
seq(seq_ssa_CA1300, "P=ACCL:L3B:2580:SSA:")
epicsThreadSleep(0.25)

# SSA17: L3B:2610
seq(seq_ssa_CA1300, "P=ACCL:L3B:2610:SSA:")
epicsThreadSleep(0.25)

# SSA18: L3B:2620
seq(seq_ssa_CA1300, "P=ACCL:L3B:2620:SSA:")
epicsThreadSleep(0.25)

# SSA19: L3B:2630
seq(seq_ssa_CA1300, "P=ACCL:L3B:2630:SSA:")
epicsThreadSleep(0.25)

# SSA20: L3B:2640
seq(seq_ssa_CA1300, "P=ACCL:L3B:2640:SSA:")
epicsThreadSleep(0.25)

# SSA21: L3B:2650
seq(seq_ssa_CA1300, "P=ACCL:L3B:2650:SSA:")
epicsThreadSleep(0.25)

# SSA22: L3B:2660
seq(seq_ssa_CA1300, "P=ACCL:L3B:2660:SSA:")
epicsThreadSleep(0.25)

# SSA23: L3B:2670
seq(seq_ssa_CA1300, "P=ACCL:L3B:2670:SSA:")
epicsThreadSleep(0.25)

# SSA24: L3B:2680
seq(seq_ssa_CA1300, "P=ACCL:L3B:2680:SSA:")
epicsThreadSleep(0.25)

# SSA25: L3B:2710
seq(seq_ssa_CA1300, "P=ACCL:L3B:2710:SSA:")
epicsThreadSleep(0.25)

# SSA26: L3B:2720
seq(seq_ssa_CA1300, "P=ACCL:L3B:2720:SSA:")
epicsThreadSleep(0.25)

# SSA27: L3B:2730
seq(seq_ssa_CA1300, "P=ACCL:L3B:2730:SSA:")
epicsThreadSleep(0.25)

# SSA28: L3B:2740
seq(seq_ssa_CA1300, "P=ACCL:L3B:2740:SSA:")
epicsThreadSleep(0.25)

# SSA29: L3B:2750
seq(seq_ssa_CA1300, "P=ACCL:L3B:2750:SSA:")
epicsThreadSleep(0.25)

# SSA30: L3B:2760
seq(seq_ssa_CA1300, "P=ACCL:L3B:2760:SSA:")
epicsThreadSleep(0.25)

# SSA31: L3B:2770
seq(seq_ssa_CA1300, "P=ACCL:L3B:2770:SSA:")
epicsThreadSleep(0.25)

# SSA32: L3B:2780
seq(seq_ssa_CA1300, "P=ACCL:L3B:2780:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

