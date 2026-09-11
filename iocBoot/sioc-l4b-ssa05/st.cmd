#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "L4B CM 49-51")
epicsEnvSet("IOC_NAME", "SIOC:L4B:SSA05")
epicsEnvSet("ASG",      "MCC_SSA")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSA1: L4B:4910
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4910,P=ACCL:L4B:4910:SSA:,CM=49,CAV1=1,ASG=$(ASG),IP=ssa-l4b-4910")

# SSA2: L4B:4920
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4920,P=ACCL:L4B:4920:SSA:,CM=49,CAV1=2,ASG=$(ASG),IP=ssa-l4b-4920")

# SSA3: L4B:4930
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4930,P=ACCL:L4B:4930:SSA:,CM=49,CAV1=3,ASG=$(ASG),IP=ssa-l4b-4930")

# SSA4: L4B:4940
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4940,P=ACCL:L4B:4940:SSA:,CM=49,CAV1=4,ASG=$(ASG),IP=ssa-l4b-4940")

# SSA5: L4B:4950
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4950,P=ACCL:L4B:4950:SSA:,CM=49,CAV1=5,ASG=$(ASG),IP=ssa-l4b-4950")

# SSA6: L4B:4960
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4960,P=ACCL:L4B:4960:SSA:,CM=49,CAV1=6,ASG=$(ASG),IP=ssa-l4b-4960")

# SSA7: L4B:4970
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4970,P=ACCL:L4B:4970:SSA:,CM=49,CAV1=7,ASG=$(ASG),IP=ssa-l4b-4970")

# SSA8: L4B:4980
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_4980,P=ACCL:L4B:4980:SSA:,CM=49,CAV1=8,ASG=$(ASG),IP=ssa-l4b-4980")

# SSA9: L4B:5010
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5010,P=ACCL:L4B:5010:SSA:,CM=50,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5010")

# SSA10: L4B:5020
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5020,P=ACCL:L4B:5020:SSA:,CM=50,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5020")

# SSA11: L4B:5030
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5030,P=ACCL:L4B:5030:SSA:,CM=50,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5030")

# SSA12: L4B:5040
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5040,P=ACCL:L4B:5040:SSA:,CM=50,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5040")

# SSA13: L4B:5050
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5050,P=ACCL:L4B:5050:SSA:,CM=50,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5050")

# SSA14: L4B:5060
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5060,P=ACCL:L4B:5060:SSA:,CM=50,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5060")

# SSA15: L4B:5070
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5070,P=ACCL:L4B:5070:SSA:,CM=50,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5070")

# SSA16: L4B:5080
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5080,P=ACCL:L4B:5080:SSA:,CM=50,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5080")

# SSA17: L4B:5110
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5110,P=ACCL:L4B:5110:SSA:,CM=51,CAV1=1,ASG=$(ASG),IP=ssa-l4b-5110")

# SSA18: L4B:5120
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5120,P=ACCL:L4B:5120:SSA:,CM=51,CAV1=2,ASG=$(ASG),IP=ssa-l4b-5120")

# SSA19: L4B:5130
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5130,P=ACCL:L4B:5130:SSA:,CM=51,CAV1=3,ASG=$(ASG),IP=ssa-l4b-5130")

# SSA20: L4B:5140
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5140,P=ACCL:L4B:5140:SSA:,CM=51,CAV1=4,ASG=$(ASG),IP=ssa-l4b-5140")

# SSA21: L4B:5150
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5150,P=ACCL:L4B:5150:SSA:,CM=51,CAV1=5,ASG=$(ASG),IP=ssa-l4b-5150")

# SSA22: L4B:5160
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5160,P=ACCL:L4B:5160:SSA:,CM=51,CAV1=6,ASG=$(ASG),IP=ssa-l4b-5160")

# SSA23: L4B:5170
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5170,P=ACCL:L4B:5170:SSA:,CM=51,CAV1=7,ASG=$(ASG),IP=ssa-l4b-5170")

# SSA24: L4B:5180
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L4B_5180,P=ACCL:L4B:5180:SSA:,CM=51,CAV1=8,ASG=$(ASG),IP=ssa-l4b-5180")



# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=49,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=51,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=52,ASG=$(ASG)")


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
# SSA1: L4B:4910
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4910:SSA:")
epicsThreadSleep(0.25)

# SSA2: L4B:4920
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4920:SSA:")
epicsThreadSleep(0.25)

# SSA3: L4B:4930
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4930:SSA:")
epicsThreadSleep(0.25)

# SSA4: L4B:4940
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4940:SSA:")
epicsThreadSleep(0.25)

# SSA5: L4B:4950
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4950:SSA:")
epicsThreadSleep(0.25)

# SSA6: L4B:4960
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4960:SSA:")
epicsThreadSleep(0.25)

# SSA7: L4B:4970
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4970:SSA:")
epicsThreadSleep(0.25)

# SSA8: L4B:4980
seq(seq_ssa_RK_CA, "P=ACCL:L4B:4980:SSA:")
epicsThreadSleep(0.25)

# SSA9: L4B:5010
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5010:SSA:")
epicsThreadSleep(0.25)

# SSA10: L4B:5020
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5020:SSA:")
epicsThreadSleep(0.25)

# SSA11: L4B:5030
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5030:SSA:")
epicsThreadSleep(0.25)

# SSA12: L4B:5040
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5040:SSA:")
epicsThreadSleep(0.25)

# SSA13: L4B:5050
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5050:SSA:")
epicsThreadSleep(0.25)

# SSA14: L4B:5060
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5060:SSA:")
epicsThreadSleep(0.25)

# SSA15: L4B:5070
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5070:SSA:")
epicsThreadSleep(0.25)

# SSA16: L4B:5080
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5080:SSA:")
epicsThreadSleep(0.25)

# SSA17: L4B:5110
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5110:SSA:")
epicsThreadSleep(0.25)

# SSA18: L4B:5120
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5120:SSA:")
epicsThreadSleep(0.25)

# SSA19: L4B:5130
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5130:SSA:")
epicsThreadSleep(0.25)

# SSA20: L4B:5140
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5140:SSA:")
epicsThreadSleep(0.25)

# SSA21: L4B:5150
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5150:SSA:")
epicsThreadSleep(0.25)

# SSA22: L4B:5160
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5160:SSA:")
epicsThreadSleep(0.25)

# SSA23: L4B:5170
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5170:SSA:")
epicsThreadSleep(0.25)

# SSA24: L4B:5180
seq(seq_ssa_RK_CA, "P=ACCL:L4B:5180:SSA:")
epicsThreadSleep(0.25)



# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

