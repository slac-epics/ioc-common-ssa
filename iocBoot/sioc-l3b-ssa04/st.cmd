#!../../bin/rhel7-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L3B CM 28-31")
epicsEnvSet("IOC_NAME", "SIOC:L3B:SSA04")
epicsEnvSet("ASG",      "MCC")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L3B:2810
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2810,P=ACCL:L3B:2810:SSA:,CM=28,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2810")

# SSA2: L3B:2820
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2820,P=ACCL:L3B:2820:SSA:,CM=28,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2820")

# SSA3: L3B:2830
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2830,P=ACCL:L3B:2830:SSA:,CM=28,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2830")

# SSA4: L3B:2840
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2840,P=ACCL:L3B:2840:SSA:,CM=28,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2840")

# SSA5: L3B:2850
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2850,P=ACCL:L3B:2850:SSA:,CM=28,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2850")

# SSA6: L3B:2860
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2860,P=ACCL:L3B:2860:SSA:,CM=28,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2860")

# SSA7: L3B:2870
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2870,P=ACCL:L3B:2870:SSA:,CM=28,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2870")

# SSA8: L3B:2880
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2880,P=ACCL:L3B:2880:SSA:,CM=28,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2880")

# SSA9: L3B:2910
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2910,P=ACCL:L3B:2910:SSA:,CM=29,CAV1=1,ASG=$(ASG),IP=ssa-l3b-2910")

# SSA10: L3B:2920
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2920,P=ACCL:L3B:2920:SSA:,CM=29,CAV1=2,ASG=$(ASG),IP=ssa-l3b-2920")

# SSA11: L3B:2930
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2930,P=ACCL:L3B:2930:SSA:,CM=29,CAV1=3,ASG=$(ASG),IP=ssa-l3b-2930")

# SSA12: L3B:2940
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2940,P=ACCL:L3B:2940:SSA:,CM=29,CAV1=4,ASG=$(ASG),IP=ssa-l3b-2940")

# SSA13: L3B:2950
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2950,P=ACCL:L3B:2950:SSA:,CM=29,CAV1=5,ASG=$(ASG),IP=ssa-l3b-2950")

# SSA14: L3B:2960
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2960,P=ACCL:L3B:2960:SSA:,CM=29,CAV1=6,ASG=$(ASG),IP=ssa-l3b-2960")

# SSA15: L3B:2970
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2970,P=ACCL:L3B:2970:SSA:,CM=29,CAV1=7,ASG=$(ASG),IP=ssa-l3b-2970")

# SSA16: L3B:2980
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_2980,P=ACCL:L3B:2980:SSA:,CM=29,CAV1=8,ASG=$(ASG),IP=ssa-l3b-2980")

# SSA17: L3B:3010
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3010,P=ACCL:L3B:3010:SSA:,CM=30,CAV1=1,ASG=$(ASG),IP=ssa-l3b-3010")

# SSA18: L3B:3020
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3020,P=ACCL:L3B:3020:SSA:,CM=30,CAV1=2,ASG=$(ASG),IP=ssa-l3b-3020")

# SSA19: L3B:3030
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3030,P=ACCL:L3B:3030:SSA:,CM=30,CAV1=3,ASG=$(ASG),IP=ssa-l3b-3030")

# SSA20: L3B:3040
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3040,P=ACCL:L3B:3040:SSA:,CM=30,CAV1=4,ASG=$(ASG),IP=ssa-l3b-3040")

# SSA21: L3B:3050
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3050,P=ACCL:L3B:3050:SSA:,CM=30,CAV1=5,ASG=$(ASG),IP=ssa-l3b-3050")

# SSA22: L3B:3060
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3060,P=ACCL:L3B:3060:SSA:,CM=30,CAV1=6,ASG=$(ASG),IP=ssa-l3b-3060")

# SSA23: L3B:3070
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3070,P=ACCL:L3B:3070:SSA:,CM=30,CAV1=7,ASG=$(ASG),IP=ssa-l3b-3070")

# SSA24: L3B:3080
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3080,P=ACCL:L3B:3080:SSA:,CM=30,CAV1=8,ASG=$(ASG),IP=ssa-l3b-3080")

# SSA25: L3B:3110
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3110,P=ACCL:L3B:3110:SSA:,CM=31,CAV1=1,ASG=$(ASG),IP=ssa-l3b-3110")

# SSA26: L3B:3120
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3120,P=ACCL:L3B:3120:SSA:,CM=31,CAV1=2,ASG=$(ASG),IP=ssa-l3b-3120")

# SSA27: L3B:3130
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3130,P=ACCL:L3B:3130:SSA:,CM=31,CAV1=3,ASG=$(ASG),IP=ssa-l3b-3130")

# SSA28: L3B:3140
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3140,P=ACCL:L3B:3140:SSA:,CM=31,CAV1=4,ASG=$(ASG),IP=ssa-l3b-3140")

# SSA29: L3B:3150
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3150,P=ACCL:L3B:3150:SSA:,CM=31,CAV1=5,ASG=$(ASG),IP=ssa-l3b-3150")

# SSA30: L3B:3160
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3160,P=ACCL:L3B:3160:SSA:,CM=31,CAV1=6,ASG=$(ASG),IP=ssa-l3b-3160")

# SSA31: L3B:3170
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3170,P=ACCL:L3B:3170:SSA:,CM=31,CAV1=7,ASG=$(ASG),IP=ssa-l3b-3170")

# SSA32: L3B:3180
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_3180,P=ACCL:L3B:3180:SSA:,CM=31,CAV1=8,ASG=$(ASG),IP=ssa-l3b-3180")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=28,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=29,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=30,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:,M=31,ASG=$(ASG)")


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
# SSA1: L3B:2810
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2810:SSA:")
epicsThreadSleep(0.25)

# SSA2: L3B:2820
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2820:SSA:")
epicsThreadSleep(0.25)

# SSA3: L3B:2830
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2830:SSA:")
epicsThreadSleep(0.25)

# SSA4: L3B:2840
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2840:SSA:")
epicsThreadSleep(0.25)

# SSA5: L3B:2850
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2850:SSA:")
epicsThreadSleep(0.25)

# SSA6: L3B:2860
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2860:SSA:")
epicsThreadSleep(0.25)

# SSA7: L3B:2870
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2870:SSA:")
epicsThreadSleep(0.25)

# SSA8: L3B:2880
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2880:SSA:")
epicsThreadSleep(0.25)

# SSA9: L3B:2910
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2910:SSA:")
epicsThreadSleep(0.25)

# SSA10: L3B:2920
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2920:SSA:")
epicsThreadSleep(0.25)

# SSA11: L3B:2930
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2930:SSA:")
epicsThreadSleep(0.25)

# SSA12: L3B:2940
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2940:SSA:")
epicsThreadSleep(0.25)

# SSA13: L3B:2950
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2950:SSA:")
epicsThreadSleep(0.25)

# SSA14: L3B:2960
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2960:SSA:")
epicsThreadSleep(0.25)

# SSA15: L3B:2970
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2970:SSA:")
epicsThreadSleep(0.25)

# SSA16: L3B:2980
seq(seq_ssa_RK_CA, "P=ACCL:L3B:2980:SSA:")
epicsThreadSleep(0.25)

# SSA17: L3B:3010
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3010:SSA:")
epicsThreadSleep(0.25)

# SSA18: L3B:3020
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3020:SSA:")
epicsThreadSleep(0.25)

# SSA19: L3B:3030
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3030:SSA:")
epicsThreadSleep(0.25)

# SSA20: L3B:3040
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3040:SSA:")
epicsThreadSleep(0.25)

# SSA21: L3B:3050
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3050:SSA:")
epicsThreadSleep(0.25)

# SSA22: L3B:3060
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3060:SSA:")
epicsThreadSleep(0.25)

# SSA23: L3B:3070
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3070:SSA:")
epicsThreadSleep(0.25)

# SSA24: L3B:3080
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3080:SSA:")
epicsThreadSleep(0.25)

# SSA25: L3B:3110
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3110:SSA:")
epicsThreadSleep(0.25)

# SSA26: L3B:3120
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3120:SSA:")
epicsThreadSleep(0.25)

# SSA27: L3B:3130
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3130:SSA:")
epicsThreadSleep(0.25)

# SSA28: L3B:3140
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3140:SSA:")
epicsThreadSleep(0.25)

# SSA29: L3B:3150
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3150:SSA:")
epicsThreadSleep(0.25)

# SSA30: L3B:3160
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3160:SSA:")
epicsThreadSleep(0.25)

# SSA31: L3B:3170
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3170:SSA:")
epicsThreadSleep(0.25)

# SSA32: L3B:3180
seq(seq_ssa_RK_CA, "P=ACCL:L3B:3180:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

