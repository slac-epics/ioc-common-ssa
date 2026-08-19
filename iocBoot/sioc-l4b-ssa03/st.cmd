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



# Load common SSA databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=43,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=44,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L4B:,M=45,ASG=$(ASG)")

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


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

