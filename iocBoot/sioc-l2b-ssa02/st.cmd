#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L2B CM 08-11")
epicsEnvSet("IOC_NAME", "SIOC:L2B:SSA02")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L2B:0810
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0810,P=ACCL:L2B:0810:SSA:,CM=08,CAV1=1,ASG=$(ASG),IP=ssa-l2b-0810")

# SSA2: L2B:0820
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0820,P=ACCL:L2B:0820:SSA:,CM=08,CAV1=2,ASG=$(ASG),IP=ssa-l2b-0820")

# SSA3: L2B:0830
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0830,P=ACCL:L2B:0830:SSA:,CM=08,CAV1=3,ASG=$(ASG),IP=ssa-l2b-0830")

# SSA4: L2B:0840
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0840,P=ACCL:L2B:0840:SSA:,CM=08,CAV1=4,ASG=$(ASG),IP=ssa-l2b-0840")

# SSA5: L2B:0850
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0850,P=ACCL:L2B:0850:SSA:,CM=08,CAV1=5,ASG=$(ASG),IP=ssa-l2b-0850")

# SSA6: L2B:0860
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0860,P=ACCL:L2B:0860:SSA:,CM=08,CAV1=6,ASG=$(ASG),IP=ssa-l2b-0860")

# SSA7: L2B:0870
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0870,P=ACCL:L2B:0870:SSA:,CM=08,CAV1=7,ASG=$(ASG),IP=ssa-l2b-0870")

# SSA8: L2B:0880
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0880,P=ACCL:L2B:0880:SSA:,CM=08,CAV1=8,ASG=$(ASG),IP=ssa-l2b-0880")

# SSA9: L2B:0910
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0910,P=ACCL:L2B:0910:SSA:,CM=09,CAV1=1,ASG=$(ASG),IP=ssa-l2b-0910")

# SSA10: L2B:0920
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0920,P=ACCL:L2B:0920:SSA:,CM=09,CAV1=2,ASG=$(ASG),IP=ssa-l2b-0920")

# SSA11: L2B:0930
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0930,P=ACCL:L2B:0930:SSA:,CM=09,CAV1=3,ASG=$(ASG),IP=ssa-l2b-0930")

# SSA12: L2B:0940
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0940,P=ACCL:L2B:0940:SSA:,CM=09,CAV1=4,ASG=$(ASG),IP=ssa-l2b-0940")

# SSA13: L2B:0950
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0950,P=ACCL:L2B:0950:SSA:,CM=09,CAV1=5,ASG=$(ASG),IP=ssa-l2b-0950")

# SSA14: L2B:0960
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0960,P=ACCL:L2B:0960:SSA:,CM=09,CAV1=6,ASG=$(ASG),IP=ssa-l2b-0960")

# SSA15: L2B:0970
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0970,P=ACCL:L2B:0970:SSA:,CM=09,CAV1=7,ASG=$(ASG),IP=ssa-l2b-0970")

# SSA16: L2B:0980
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_0980,P=ACCL:L2B:0980:SSA:,CM=09,CAV1=8,ASG=$(ASG),IP=ssa-l2b-0980")

# SSA17: L2B:1010
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1010,P=ACCL:L2B:1010:SSA:,CM=10,CAV1=1,ASG=$(ASG),IP=ssa-l2b-1010")

# SSA18: L2B:1020
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1020,P=ACCL:L2B:1020:SSA:,CM=10,CAV1=2,ASG=$(ASG),IP=ssa-l2b-1020")

# SSA19: L2B:1030
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1030,P=ACCL:L2B:1030:SSA:,CM=10,CAV1=3,ASG=$(ASG),IP=ssa-l2b-1030")

# SSA20: L2B:1040
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1040,P=ACCL:L2B:1040:SSA:,CM=10,CAV1=4,ASG=$(ASG),IP=ssa-l2b-1040")

# SSA21: L2B:1050
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1050,P=ACCL:L2B:1050:SSA:,CM=10,CAV1=5,ASG=$(ASG),IP=ssa-l2b-1050")

# SSA22: L2B:1060
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1060,P=ACCL:L2B:1060:SSA:,CM=10,CAV1=6,ASG=$(ASG),IP=ssa-l2b-1060")

# SSA23: L2B:1070
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1070,P=ACCL:L2B:1070:SSA:,CM=10,CAV1=7,ASG=$(ASG),IP=ssa-l2b-1070")

# SSA24: L2B:1080
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1080,P=ACCL:L2B:1080:SSA:,CM=10,CAV1=8,ASG=$(ASG),IP=ssa-l2b-1080")

# SSA25: L2B:1110
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1110,P=ACCL:L2B:1110:SSA:,CM=11,CAV1=1,ASG=$(ASG),IP=ssa-l2b-1110")

# SSA26: L2B:1120
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1120,P=ACCL:L2B:1120:SSA:,CM=11,CAV1=2,ASG=$(ASG),IP=ssa-l2b-1120")

# SSA27: L2B:1130
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1130,P=ACCL:L2B:1130:SSA:,CM=11,CAV1=3,ASG=$(ASG),IP=ssa-l2b-1130")

# SSA28: L2B:1140
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1140,P=ACCL:L2B:1140:SSA:,CM=11,CAV1=4,ASG=$(ASG),IP=ssa-l2b-1140")

# SSA29: L2B:1150
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1150,P=ACCL:L2B:1150:SSA:,CM=11,CAV1=5,ASG=$(ASG),IP=ssa-l2b-1150")

# SSA30: L2B:1160
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1160,P=ACCL:L2B:1160:SSA:,CM=11,CAV1=6,ASG=$(ASG),IP=ssa-l2b-1160")

# SSA31: L2B:1170
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1170,P=ACCL:L2B:1170:SSA:,CM=11,CAV1=7,ASG=$(ASG),IP=ssa-l2b-1170")

# SSA32: L2B:1180
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L2B_1180,P=ACCL:L2B:1180:SSA:,CM=11,CAV1=8,ASG=$(ASG),IP=ssa-l2b-1180")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=08,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=09,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=10,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L2B:,M=11,ASG=$(ASG)")


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
# SSA1: L2B:0810
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0810:SSA:")
epicsThreadSleep(0.25)

# SSA2: L2B:0820
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0820:SSA:")
epicsThreadSleep(0.25)

# SSA3: L2B:0830
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0830:SSA:")
epicsThreadSleep(0.25)

# SSA4: L2B:0840
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0840:SSA:")
epicsThreadSleep(0.25)

# SSA5: L2B:0850
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0850:SSA:")
epicsThreadSleep(0.25)

# SSA6: L2B:0860
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0860:SSA:")
epicsThreadSleep(0.25)

# SSA7: L2B:0870
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0870:SSA:")
epicsThreadSleep(0.25)

# SSA8: L2B:0880
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0880:SSA:")
epicsThreadSleep(0.25)

# SSA9: L2B:0910
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0910:SSA:")
epicsThreadSleep(0.25)

# SSA10: L2B:0920
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0920:SSA:")
epicsThreadSleep(0.25)

# SSA11: L2B:0930
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0930:SSA:")
epicsThreadSleep(0.25)

# SSA12: L2B:0940
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0940:SSA:")
epicsThreadSleep(0.25)

# SSA13: L2B:0950
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0950:SSA:")
epicsThreadSleep(0.25)

# SSA14: L2B:0960
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0960:SSA:")
epicsThreadSleep(0.25)

# SSA15: L2B:0970
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0970:SSA:")
epicsThreadSleep(0.25)

# SSA16: L2B:0980
seq(seq_ssa_RK_CA, "P=ACCL:L2B:0980:SSA:")
epicsThreadSleep(0.25)

# SSA17: L2B:1010
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1010:SSA:")
epicsThreadSleep(0.25)

# SSA18: L2B:1020
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1020:SSA:")
epicsThreadSleep(0.25)

# SSA19: L2B:1030
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1030:SSA:")
epicsThreadSleep(0.25)

# SSA20: L2B:1040
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1040:SSA:")
epicsThreadSleep(0.25)

# SSA21: L2B:1050
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1050:SSA:")
epicsThreadSleep(0.25)

# SSA22: L2B:1060
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1060:SSA:")
epicsThreadSleep(0.25)

# SSA23: L2B:1070
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1070:SSA:")
epicsThreadSleep(0.25)

# SSA24: L2B:1080
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1080:SSA:")
epicsThreadSleep(0.25)

# SSA25: L2B:1110
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1110:SSA:")
epicsThreadSleep(0.25)

# SSA26: L2B:1120
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1120:SSA:")
epicsThreadSleep(0.25)

# SSA27: L2B:1130
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1130:SSA:")
epicsThreadSleep(0.25)

# SSA28: L2B:1140
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1140:SSA:")
epicsThreadSleep(0.25)

# SSA29: L2B:1150
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1150:SSA:")
epicsThreadSleep(0.25)

# SSA30: L2B:1160
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1160:SSA:")
epicsThreadSleep(0.25)

# SSA31: L2B:1170
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1170:SSA:")
epicsThreadSleep(0.25)

# SSA32: L2B:1180
seq(seq_ssa_RK_CA, "P=ACCL:L2B:1180:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

