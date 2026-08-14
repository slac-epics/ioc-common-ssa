#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 57-59")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA06")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L4B:5710
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5710,P=ACCL:L4B:5710:SSA:,CM=57,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5710")

# SSA2: L4B:5720
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5720,P=ACCL:L4B:5720:SSA:,CM=57,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5720")

# SSA3: L4B:5730
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5730,P=ACCL:L4B:5730:SSA:,CM=57,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5730")

# SSA4: L4B:5740
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5740,P=ACCL:L4B:5740:SSA:,CM=57,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5740")

# SSA5: L4B:5750
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5750,P=ACCL:L4B:5750:SSA:,CM=57,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5750")

# SSA6: L4B:5760
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5760,P=ACCL:L4B:5760:SSA:,CM=57,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5760")

# SSA7: L4B:5770
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5770,P=ACCL:L4B:5770:SSA:,CM=57,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5770")

# SSA8: L4B:5780
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5780,P=ACCL:L4B:5780:SSA:,CM=57,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5780")

# SSA9: L4B:5810
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5810,P=ACCL:L4B:5810:SSA:,CM=58,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5810")

# SSA10: L4B:5820
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5820,P=ACCL:L4B:5820:SSA:,CM=58,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5820")

# SSA11: L4B:5830
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5830,P=ACCL:L4B:5830:SSA:,CM=58,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5830")

# SSA12: L4B:5840
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5840,P=ACCL:L4B:5840:SSA:,CM=58,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5840")

# SSA13: L4B:5850
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5850,P=ACCL:L4B:5850:SSA:,CM=58,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5850")

# SSA14: L4B:5860
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5860,P=ACCL:L4B:5860:SSA:,CM=58,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5860")

# SSA15: L4B:5870
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5870,P=ACCL:L4B:5870:SSA:,CM=58,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5870")

# SSA16: L4B:5880
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5880,P=ACCL:L4B:5880:SSA:,CM=58,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5880")

# SSA17: L4B:5910
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5910,P=ACCL:L4B:5910:SSA:,CM=59,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5910")

# SSA18: L4B:5920
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5920,P=ACCL:L4B:5920:SSA:,CM=59,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5920")

# SSA19: L4B:5930
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5930,P=ACCL:L4B:5930:SSA:,CM=59,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5930")

# SSA20: L4B:5940
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5940,P=ACCL:L4B:5940:SSA:,CM=59,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5940")

# SSA21: L4B:5950
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_5950,P=ACCL:L4B:5950:SSA:,CM=59,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5950")

# SSA22: L4B:5960
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_5960,P=ACCL:L4B:5960:SSA:,CM=59,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5960")

# SSA23: L4B:5970
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_5970,P=ACCL:L4B:5970:SSA:,CM=59,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5970")

# SSA24: L4B:5980
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_5980,P=ACCL:L4B:5980:SSA:,CM=59,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5980")



# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=57,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=58,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=59,ASG=$(ASG)")


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
# SSA1: L4B:5710
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5710:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:5720
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5720:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:5730
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5730:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:5740
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5740:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:5750
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5750:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:5760
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5760:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:5770
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5770:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:5780
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5780:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:5810
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5810:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:5820
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5820:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:5830
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5830:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:5840
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5840:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:5850
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5850:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:5860
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5860:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:5870
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5870:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:5880
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5880:SSA:")
epicsThreadSleep(0.25)

# SSA17: L4B:5910
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5910:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:5920
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5920:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:5930
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5930:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:5940
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5940:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:5950
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5950:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:5960
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5960:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:5970
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5970:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:5980
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5980:SSA:")
epicsThreadSleep(0.25)



# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

