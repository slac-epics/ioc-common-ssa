#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 32-40")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA05")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L4B:3710
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3210,P=ACCL:L4B:3710:SSA:,CM=37,CAV1=1,ASG=$(ASG),IP=ssa-l4b-3710")

# SSA2: L4B:3720
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3220,P=ACCL:L4B:3720:SSA:,CM=37,CAV1=2,ASG=$(ASG),IP=ssa-l4b-3720")

# SSA3: L4B:3730
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3230,P=ACCL:L4B:3730:SSA:,CM=37,CAV1=3,ASG=$(ASG),IP=ssa-l4b-3730")

# SSA4: L4B:3740
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3240,P=ACCL:L4B:3740:SSA:,CM=37,CAV1=4,ASG=$(ASG),IP=ssa-l4b-3740")

# SSA5: L4B:3750
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3250,P=ACCL:L4B:3750:SSA:,CM=37,CAV1=5,ASG=$(ASG),IP=ssa-l4b-3750")

# SSA6: L4B:3760
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3260,P=ACCL:L4B:3760:SSA:,CM=37,CAV1=6,ASG=$(ASG),IP=ssa-l4b-3760")

# SSA7: L4B:3770
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3270,P=ACCL:L4B:3770:SSA:,CM=37,CAV1=7,ASG=$(ASG),IP=ssa-l4b-3770")

# SSA8: L4B:3780
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3280,P=ACCL:L4B:3780:SSA:,CM=37,CAV1=8,ASG=$(ASG),IP=ssa-l4b-3780")

# SSA9: L4B:3810
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3310,P=ACCL:L4B:3810:SSA:,CM=38,CAV1=1,ASG=$(ASG),IP=ssa-l4b-3810")

# SSA10: L4B:3820
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3320,P=ACCL:L4B:3820:SSA:,CM=38,CAV1=2,ASG=$(ASG),IP=ssa-l4b-3820")

# SSA11: L4B:3830
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3330,P=ACCL:L4B:3830:SSA:,CM=38,CAV1=3,ASG=$(ASG),IP=ssa-l4b-3830")

# SSA12: L4B:3840
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3340,P=ACCL:L4B:3840:SSA:,CM=38,CAV1=4,ASG=$(ASG),IP=ssa-l4b-3840")

# SSA13: L4B:3850
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3350,P=ACCL:L4B:3850:SSA:,CM=38,CAV1=5,ASG=$(ASG),IP=ssa-l4b-3850")

# SSA14: L4B:3860
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3360,P=ACCL:L4B:3860:SSA:,CM=38,CAV1=6,ASG=$(ASG),IP=ssa-l4b-3860")

# SSA15: L4B:3870
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3370,P=ACCL:L4B:3870:SSA:,CM=38,CAV1=7,ASG=$(ASG),IP=ssa-l4b-3870")

# SSA16: L4B:3880
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3380,P=ACCL:L4B:3880:SSA:,CM=38,CAV1=8,ASG=$(ASG),IP=ssa-l4b-3880")

# SSA17: L4B:3910
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3410,P=ACCL:L4B:3910:SSA:,CM=39,CAV1=1,ASG=$(ASG),IP=ssa-l4b-3910")

# SSA18: L4B:3920
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3420,P=ACCL:L4B:3920:SSA:,CM=39,CAV1=2,ASG=$(ASG),IP=ssa-l4b-3920")

# SSA19: L4B:3930
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3430,P=ACCL:L4B:3930:SSA:,CM=39,CAV1=3,ASG=$(ASG),IP=ssa-l4b-3930")

# SSA20: L4B:3940
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3440,P=ACCL:L4B:3940:SSA:,CM=39,CAV1=4,ASG=$(ASG),IP=ssa-l4b-3940")

# SSA21: L4B:3950
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L4B_3450,P=ACCL:L4B:3950:SSA:,CM=39,CAV1=5,ASG=$(ASG),IP=ssa-l4b-3950")

# SSA22: L4B:3960
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3460,P=ACCL:L4B:3960:SSA:,CM=39,CAV1=6,ASG=$(ASG),IP=ssa-l4b-3960")

# SSA23: L4B:3970
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3470,P=ACCL:L4B:3970:SSA:,CM=39,CAV1=7,ASG=$(ASG),IP=ssa-l4b-3970")

# SSA24: L4B:3980
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3480,P=ACCL:L4B:3980:SSA:,CM=39,CAV1=8,ASG=$(ASG),IP=ssa-l4b-3980")

# SSA25: L4B:4010
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_4.6kW.iocsh", "PORT=L4B_3510,P=ACCL:L4B:4010:SSA:,CM=40,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4010")

# SSA26: L4B:4020
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3520,P=ACCL:L4B:4020:SSA:,CM=40,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4020")

# SSA27: L4B:4030
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3530,P=ACCL:L4B:4030:SSA:,CM=40,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4030")

# SSA28: L4B:4040
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3540,P=ACCL:L4B:4040:SSA:,CM=40,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4040")

# SSA29: L4B:4050
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3550,P=ACCL:L4B:4050:SSA:,CM=40,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4050")

# SSA30: L4B:4060
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3560,P=ACCL:L4B:4060:SSA:,CM=40,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4060")

# SSA31: L4B:4070
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3570,P=ACCL:L4B:4070:SSA:,CM=40,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4070")

# SSA32: L4B:4080
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_3580,P=ACCL:L4B:4080:SSA:,CM=40,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4080")


# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=37,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=38,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=39,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=40,ASG=$(ASG)")


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
# SSA1: L4B:3710
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3710:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:3720
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3720:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:3730
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3730:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:3740
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3740:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:3750
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3750:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:3760
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3760:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:3770
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3770:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:3780
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3780:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:3810
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3810:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:3820
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3820:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:3830
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3830:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:3840
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3840:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:3850
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3850:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:3860
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3860:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:3870
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3870:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:3880
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3880:SSA:")
epicsThreadSleep(0.25)

# SSA17: L4B:3910
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3910:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:3920
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3920:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:3930
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3930:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:3940
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3940:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:3950
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3950:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:3960
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3960:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:3970
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3970:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:3980
seq(seq_ssa_RK_CA, "P=ACCL:L4B:3980:SSA:")
epicsThreadSleep(0.25)

# SSA25: L4B:4010
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4010:SSA:")
epicsThreadSleep(0.25)

# SSA26: L4B:4020
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4020:SSA:")
epicsThreadSleep(0.25)

# SSA27: L4B:4030
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4030:SSA:")
epicsThreadSleep(0.25)

# SSA28: L4B:4040
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4040:SSA:")
epicsThreadSleep(0.25)

# SSA29: L4B:4050
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4050:SSA:")
epicsThreadSleep(0.25)

# SSA30: L4B:4060
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4060:SSA:")
epicsThreadSleep(0.25)

# SSA31: L4B:4070
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4070:SSA:")
epicsThreadSleep(0.25)

# SSA32: L4B:4080
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4080:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

