#!../../bin/rhel9-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test stand 1")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA1")
epicsEnvSet("ASG",      "DEFAULT")

< $(TOP)/iocBoot/common/st.cmd.soft

# Set access security
#asSetFilename("${TOP}/iocBoot/common/srf_permit_test.acf")
asSetFilename("${TOP}/iocBoot/common/no_security.acf")

## Run IOC shell script for each SSA
#
# SSA1: L1B:0210
# 3.8 kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0210,P=ACCL:L1B:0210:SSA:,CM=02,CAV1=1,ASG=$(ASG),IP=ssa-b15-rf0110")

# Load SSA stats database
dbLoadRecords("db/ssa_stats.db")

# Load common databases
dbLoadRecords("db/ssa_sys0_common.db", "ASG=$(ASG)")

# Simulation (for testing only - simulated SSAs and global controls)
dbLoadRecords("db/ssa_sim.db", "CAV1=0,CAV2=0,CM=0,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L0B:,M=01,ASG=$(ASG)")
#dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L1B:,M=02,ASG=$(ASG)")
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L1B:,M=03,ASG=$(ASG)")
dbLoadRecords("db/hlCommon.db", "P=ACCL:L1B:,M=H1,ASG=$(ASG)")
dbLoadRecords("db/hlCommon.db", "P=ACCL:L1B:,M=H2,ASG=$(ASG)")
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

dbpf("ACCL:L1B:0210:SSA:SeqDebug", 1)
epicsThreadSleep(0.5)

## Start sequence programs, one for each SSA
# This must be done after iocInit
#
# SSA1: L1B:0210
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0210:SSA:")
epicsThreadSleep(0.5)

seq(seq_ssa_sys0_common, "P=ACCL:SYS0:SC:SSA:")
epicsThreadSleep(0.5)

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

