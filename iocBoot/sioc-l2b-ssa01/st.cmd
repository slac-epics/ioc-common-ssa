#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L2B CM 04-07")
epicsEnvSet("IOC_NAME", "SIOC:L2B:SSA01")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L2B:0410
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0410,P=ACCL:L2B:0410:SSA:,CM=04,CAV1=1,ASG=$(ASG),IP=ssa-l2b-0410")

# SSA2: L2B:0420
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0420,P=ACCL:L2B:0420:SSA:,CM=04,CAV1=2,ASG=$(ASG),IP=ssa-l2b-0420")

# SSA3: L2B:0430
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0430,P=ACCL:L2B:0430:SSA:,CM=04,CAV1=3,ASG=$(ASG),IP=ssa-l2b-0430")

# SSA4: L2B:0440
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0440,P=ACCL:L2B:0440:SSA:,CM=04,CAV1=4,ASG=$(ASG),IP=ssa-l2b-0440")

# SSA5: L2B:0450
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0450,P=ACCL:L2B:0450:SSA:,CM=04,CAV1=5,ASG=$(ASG),IP=ssa-l2b-0450")

# SSA6: L2B:0460
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0460,P=ACCL:L2B:0460:SSA:,CM=04,CAV1=6,ASG=$(ASG),IP=ssa-l2b-0460")

# SSA7: L2B:0470
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0470,P=ACCL:L2B:0470:SSA:,CM=04,CAV1=7,ASG=$(ASG),IP=ssa-l2b-0470")

# SSA8: L2B:0480
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0480,P=ACCL:L2B:0480:SSA:,CM=04,CAV1=8,ASG=$(ASG),IP=ssa-l2b-0480")

# SSA9: L2B:0510
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0510,P=ACCL:L2B:0510:SSA:,CM=05,CAV1=1,ASG=$(ASG),IP=ssa-l2b-0510")

# SSA10: L2B:0520
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0520,P=ACCL:L2B:0520:SSA:,CM=05,CAV1=2,ASG=$(ASG),IP=ssa-l2b-0520")

# SSA11: L2B:0530
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0530,P=ACCL:L2B:0530:SSA:,CM=05,CAV1=3,ASG=$(ASG),IP=ssa-l2b-0530")

# SSA12: L2B:0540
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0540,P=ACCL:L2B:0540:SSA:,CM=05,CAV1=4,ASG=$(ASG),IP=ssa-l2b-0540")

# SSA13: L2B:0550
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0550,P=ACCL:L2B:0550:SSA:,CM=05,CAV1=5,ASG=$(ASG),IP=ssa-l2b-0550")

# SSA14: L2B:0560
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0560,P=ACCL:L2B:0560:SSA:,CM=05,CAV1=6,ASG=$(ASG),IP=ssa-l2b-0560")

# SSA15: L2B:0570
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0570,P=ACCL:L2B:0570:SSA:,CM=05,CAV1=7,ASG=$(ASG),IP=ssa-l2b-0570")

# SSA16: L2B:0580
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0580,P=ACCL:L2B:0580:SSA:,CM=05,CAV1=8,ASG=$(ASG),IP=ssa-l2b-0580")

# SSA17: L2B:0610
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0610,P=ACCL:L2B:0610:SSA:,CM=06,CAV1=1,ASG=$(ASG),IP=ssa-l2b-0610")

# SSA18: L2B:0620
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0620,P=ACCL:L2B:0620:SSA:,CM=06,CAV1=2,ASG=$(ASG),IP=ssa-l2b-0620")

# SSA19: L2B:0630
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0630,P=ACCL:L2B:0630:SSA:,CM=06,CAV1=3,ASG=$(ASG),IP=ssa-l2b-0630")

# SSA20: L2B:0640
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0640,P=ACCL:L2B:0640:SSA:,CM=06,CAV1=4,ASG=$(ASG),IP=ssa-l2b-0640")

# SSA21: L2B:0650
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0650,P=ACCL:L2B:0650:SSA:,CM=06,CAV1=5,ASG=$(ASG),IP=ssa-l2b-0650")

# SSA22: L2B:0660
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0660,P=ACCL:L2B:0660:SSA:,CM=06,CAV1=6,ASG=$(ASG),IP=ssa-l2b-0660")

# SSA23: L2B:0670
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0670,P=ACCL:L2B:0670:SSA:,CM=06,CAV1=7,ASG=$(ASG),IP=ssa-l2b-0670")

# SSA24: L2B:0680
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0680,P=ACCL:L2B:0680:SSA:,CM=06,CAV1=8,ASG=$(ASG),IP=ssa-l2b-0680")

# SSA25: L2B:0710
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0710,P=ACCL:L2B:0710:SSA:,CM=07,CAV1=1,ASG=$(ASG),IP=ssa-l2b-0710")

# SSA26: L2B:0720
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0720,P=ACCL:L2B:0720:SSA:,CM=07,CAV1=2,ASG=$(ASG),IP=ssa-l2b-0720")

# SSA27: L2B:0730
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0730,P=ACCL:L2B:0730:SSA:,CM=07,CAV1=3,ASG=$(ASG),IP=ssa-l2b-0730")

# SSA28: L2B:0740
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0740,P=ACCL:L2B:0740:SSA:,CM=07,CAV1=4,ASG=$(ASG),IP=ssa-l2b-0740")

# SSA29: L2B:0750
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0750,P=ACCL:L2B:0750:SSA:,CM=07,CAV1=5,ASG=$(ASG),IP=ssa-l2b-0750")

# SSA30: L2B:0760
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0760,P=ACCL:L2B:0760:SSA:,CM=07,CAV1=6,ASG=$(ASG),IP=ssa-l2b-0760")

# SSA31: L2B:0770
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0770,P=ACCL:L2B:0770:SSA:,CM=07,CAV1=7,ASG=$(ASG),IP=ssa-l2b-0770")

# SSA32: L2B:0780
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0780,P=ACCL:L2B:0780:SSA:,CM=07,CAV1=8,ASG=$(ASG),IP=ssa-l2b-0780")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=04,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=05,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=06,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=07,ASG=$(ASG)")


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
# SSA1: L2B:0410
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0410:SSA:")
epicsThreadSleep(0.25)

# SSA2: L2B:0420
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0420:SSA:")
epicsThreadSleep(0.25)

# SSA3: L2B:0430
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0430:SSA:")
epicsThreadSleep(0.25)

# SSA4: L2B:0440
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0440:SSA:")
epicsThreadSleep(0.25)

# SSA5: L2B:0450
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0450:SSA:")
epicsThreadSleep(0.25)

# SSA6: L2B:0460
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0460:SSA:")
epicsThreadSleep(0.25)

# SSA7: L2B:0470
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0470:SSA:")
epicsThreadSleep(0.25)

# SSA8: L2B:0480
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0480:SSA:")
epicsThreadSleep(0.25)

# SSA9: L2B:0510
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0510:SSA:")
epicsThreadSleep(0.25)

# SSA10: L2B:0520
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0520:SSA:")
epicsThreadSleep(0.25)

# SSA11: L2B:0530
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0530:SSA:")
epicsThreadSleep(0.25)

# SSA12: L2B:0540
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0540:SSA:")
epicsThreadSleep(0.25)

# SSA13: L2B:0550
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0550:SSA:")
epicsThreadSleep(0.25)

# SSA14: L2B:0560
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0560:SSA:")
epicsThreadSleep(0.25)

# SSA15: L2B:0570
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0570:SSA:")
epicsThreadSleep(0.25)

# SSA16: L2B:0580
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0580:SSA:")
epicsThreadSleep(0.25)

# SSA17: L2B:0610
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0610:SSA:")
epicsThreadSleep(0.25)

# SSA18: L2B:0620
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0620:SSA:")
epicsThreadSleep(0.25)

# SSA19: L2B:0630
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0630:SSA:")
epicsThreadSleep(0.25)

# SSA20: L2B:0640
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0640:SSA:")
epicsThreadSleep(0.25)

# SSA21: L2B:0650
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0650:SSA:")
epicsThreadSleep(0.25)

# SSA22: L2B:0660
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0660:SSA:")
epicsThreadSleep(0.25)

# SSA23: L2B:0670
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0670:SSA:")
epicsThreadSleep(0.25)

# SSA24: L2B:0680
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0680:SSA:")
epicsThreadSleep(0.25)

# SSA25: L2B:0710
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0710:SSA:")
epicsThreadSleep(0.25)

# SSA26: L2B:0720
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0720:SSA:")
epicsThreadSleep(0.25)

# SSA27: L2B:0730
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0730:SSA:")
epicsThreadSleep(0.25)

# SSA28: L2B:0740
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0740:SSA:")
epicsThreadSleep(0.25)

# SSA29: L2B:0750
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0750:SSA:")
epicsThreadSleep(0.25)

# SSA30: L2B:0760
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0760:SSA:")
epicsThreadSleep(0.25)

# SSA31: L2B:0770
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0770:SSA:")
epicsThreadSleep(0.25)

# SSA32: L2B:0780
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0780:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

