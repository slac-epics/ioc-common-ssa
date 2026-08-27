#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 55-57")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA06")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L4B:5510
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5510,P=ACCL:L4B:5510:SSA:,CM=55,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5510")

# SSA2: L4B:5520
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5520,P=ACCL:L4B:5520:SSA:,CM=55,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5520")

# SSA3: L4B:5530
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5530,P=ACCL:L4B:5530:SSA:,CM=55,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5530")

# SSA4: L4B:5540
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5540,P=ACCL:L4B:5540:SSA:,CM=55,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5540")

# SSA5: L4B:5550
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5550,P=ACCL:L4B:5550:SSA:,CM=55,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5550")

# SSA6: L4B:5560
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5560,P=ACCL:L4B:5560:SSA:,CM=55,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5560")

# SSA7: L4B:5570
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5570,P=ACCL:L4B:5570:SSA:,CM=55,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5570")

# SSA8: L4B:5580
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5580,P=ACCL:L4B:5580:SSA:,CM=55,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5580")

# SSA9: L4B:5610
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5610,P=ACCL:L4B:5610:SSA:,CM=56,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5610")

# SSA10: L4B:5620
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5620,P=ACCL:L4B:5620:SSA:,CM=56,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5620")

# SSA11: L4B:5630
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5630,P=ACCL:L4B:5630:SSA:,CM=56,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5630")

# SSA12: L4B:5640
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5640,P=ACCL:L4B:5640:SSA:,CM=56,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5640")

# SSA13: L4B:5650
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5650,P=ACCL:L4B:5650:SSA:,CM=56,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5650")

# SSA14: L4B:5660
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5660,P=ACCL:L4B:5660:SSA:,CM=56,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5660")

# SSA15: L4B:5670
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5670,P=ACCL:L4B:5670:SSA:,CM=56,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5670")

# SSA16: L4B:5680
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5680,P=ACCL:L4B:5680:SSA:,CM=56,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5680")

# SSA17: L4B:5710
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5710,P=ACCL:L4B:5710:SSA:,CM=57,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5510")

# SSA18: L4B:5720
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5720,P=ACCL:L4B:5720:SSA:,CM=57,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5520")

# SSA19: L4B:5730
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5730,P=ACCL:L4B:5730:SSA:,CM=57,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5530")

# SSA20: L4B:5740
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5740,P=ACCL:L4B:5740:SSA:,CM=57,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5540")

# SSA21: L4B:5750
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5750,P=ACCL:L4B:5750:SSA:,CM=57,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5550")

# SSA22: L4B:5760
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5760,P=ACCL:L4B:5760:SSA:,CM=57,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5560")

# SSA23: L4B:5770
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5770,P=ACCL:L4B:5770:SSA:,CM=57,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5570")

# SSA24: L4B:5780
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5780,P=ACCL:L4B:5780:SSA:,CM=57,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5580")



# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=55,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=56,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=55,ASG=$(ASG)")


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
# SSA1: L4B:5510
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5510:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:5520
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5520:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:5530
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5530:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:5540
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5540:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:5550
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5550:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:5560
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5560:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:5570
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5570:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:5580
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5580:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:5610
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5610:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:5620
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5620:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:5630
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5630:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:5640
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5640:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:5650
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5650:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:5660
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5660:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:5670
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5670:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:5680
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5680:SSA:")
epicsThreadSleep(0.25)

# SSA17: L4B:5710
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5710:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:5720
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5720:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:5730
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5730:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:5740
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5740:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:5750
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5750:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:5760
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5760:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:5770
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5770:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:5780
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5780:SSA:")
epicsThreadSleep(0.25)



# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

