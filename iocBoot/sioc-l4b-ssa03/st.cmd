#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 45-48")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA03")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L4B:4510
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3210,P=ACCL:L4B:4510:SSA:,CM=45,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4510")

# SSA2: L4B:4520
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3220,P=ACCL:L4B:4520:SSA:,CM=45,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4520")

# SSA3: L4B:4530
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3230,P=ACCL:L4B:4530:SSA:,CM=45,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4530")

# SSA4: L4B:4540
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3240,P=ACCL:L4B:4540:SSA:,CM=45,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4540")

# SSA5: L4B:4550
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3250,P=ACCL:L4B:4550:SSA:,CM=45,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4550")

# SSA6: L4B:4560
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3260,P=ACCL:L4B:4560:SSA:,CM=45,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4560")

# SSA7: L4B:4570
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3270,P=ACCL:L4B:4570:SSA:,CM=45,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4570")

# SSA8: L4B:4580
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3280,P=ACCL:L4B:4580:SSA:,CM=45,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4580")

# SSA9: L4B:4610
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3310,P=ACCL:L4B:4610:SSA:,CM=46,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4610")

# SSA10: L4B:4620
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3320,P=ACCL:L4B:4620:SSA:,CM=46,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4620")

# SSA11: L4B:4630
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3330,P=ACCL:L4B:4630:SSA:,CM=46,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4630")

# SSA12: L4B:4640
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3340,P=ACCL:L4B:4640:SSA:,CM=46,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4640")

# SSA13: L4B:4650
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3350,P=ACCL:L4B:4650:SSA:,CM=46,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4650")

# SSA14: L4B:4660
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3360,P=ACCL:L4B:4660:SSA:,CM=46,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4660")

# SSA15: L4B:4670
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3370,P=ACCL:L4B:4670:SSA:,CM=46,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4670")

# SSA16: L4B:4680
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3380,P=ACCL:L4B:4680:SSA:,CM=46,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4680")

# SSA17: L4B:4710
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3410,P=ACCL:L4B:4710:SSA:,CM=47,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4710")

# SSA18: L4B:4720
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3420,P=ACCL:L4B:4720:SSA:,CM=47,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4720")

# SSA19: L4B:4730
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3430,P=ACCL:L4B:4730:SSA:,CM=47,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4730")

# SSA20: L4B:4740
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3440,P=ACCL:L4B:4740:SSA:,CM=47,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4740")

# SSA21: L4B:4750
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3450,P=ACCL:L4B:4750:SSA:,CM=47,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4750")

# SSA22: L4B:4760
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3460,P=ACCL:L4B:4760:SSA:,CM=47,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4760")

# SSA23: L4B:4770
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3470,P=ACCL:L4B:4770:SSA:,CM=47,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4770")

# SSA24: L4B:4780
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3480,P=ACCL:L4B:4780:SSA:,CM=47,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4780")

# SSA25: L4B:4810
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3510,P=ACCL:L4B:4810:SSA:,CM=48,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4810")

# SSA26: L4B:4820
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3520,P=ACCL:L4B:4820:SSA:,CM=48,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4820")

# SSA27: L4B:4830
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3530,P=ACCL:L4B:4830:SSA:,CM=48,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4830")

# SSA28: L4B:4840
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3540,P=ACCL:L4B:4840:SSA:,CM=48,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4840")

# SSA29: L4B:4850
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3550,P=ACCL:L4B:4850:SSA:,CM=48,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4850")

# SSA30: L4B:4860
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3560,P=ACCL:L4B:4860:SSA:,CM=48,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4860")

# SSA31: L4B:4870
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3570,P=ACCL:L4B:4870:SSA:,CM=48,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4870")

# SSA32: L4B:4880
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3580,P=ACCL:L4B:4880:SSA:,CM=48,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4880")


# Load common SSA databases
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

