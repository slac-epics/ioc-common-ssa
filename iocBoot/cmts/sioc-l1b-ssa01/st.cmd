#!../../../bin/linux-x86_64/ssa

# For CMTS only
# Do *NOT* run this IOC at SLAC
# It would cause duplicate PV names

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/ssa.dbd")
ssa_registerRecordDeviceDriver(pdbbase)

## Set up environment variables
epicsEnvSet("ENGINEER", "Sonya Hoobler")
epicsEnvSet("LOCATION", "L1B Cryomodule 2")
epicsEnvSet("IOC_NAME", "SIOC:L1B:SSA01")
epicsEnvSet("ASG",      "DEFAULT")

## Tag log messages with IOC name
#epicsEnvSet("EPICS_IOC_LOG_CLIENT_INET", "${IOC}")

# =====================================================================
# Load iocAdmin databases to support IOC Health and monitoring
# =====================================================================
#dbLoadRecords("db/iocAdminSoft.db", "IOC=${IOC_NAME}")
#dbLoadRecords("db/iocAdminScanMon.db", "IOC=${IOC_NAME}")
#dbLoadRecords("db/iocRelease.db", "IOC=${IOC_NAME}")

# Sequencer - optional monitoring record
#dbLoadRecords("db/devSeqCar.db", "SIOC=${IOC_NAME}")

# Autosave initialization
< $(TOP)/iocBoot/common/autosave_init.cmd

# =====================================================================
# Channel Access Security:
# This is required if you use caPutLog.
# Set access security file
#< ${ACF_INIT}
asSetFilename($(TOP)/iocBoot/common/no_security.acf)


## Run IOC shell script for each SSA
#
# SSA1: L1B:H110
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H110,P=ACCL:L1B:H110:SSA:,CM=H1,CAV1=1,ASG=$(ASG),IP=lcls-ssa11")

# SSA2: L1B:H120
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H120,P=ACCL:L1B:H120:SSA:,CM=H1,CAV1=2,ASG=$(ASG),IP=lcls-ssa12")

# SSA3: L1B:H130
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H130,P=ACCL:L1B:H130:SSA:,CM=H1,CAV1=3,ASG=$(ASG),IP=lcls-ssa13")

# SSA4: L1B:H140
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H140,P=ACCL:L1B:H140:SSA:,CM=H1,CAV1=4,ASG=$(ASG),IP=lcls-ssa14")

# SSA5: L1B:H150
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H150,P=ACCL:L1B:H150:SSA:,CM=H1,CAV1=5,ASG=$(ASG),IP=lcls-ssa15")

# SSA6: L1B:H160
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H160,P=ACCL:L1B:H160:SSA:,CM=H1,CAV1=6,ASG=$(ASG),IP=lcls-ssa16")

# SSA7: L1B:H170
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H170,P=ACCL:L1B:H170:SSA:,CM=H1,CAV1=7,ASG=$(ASG),IP=lcls-ssa17")

# SSA8: L1B:H180
# 7kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_H180,P=ACCL:L1B:H180:SSA:,CM=H1,CAV1=8,ASG=$(ASG),IP=lcls-ssa18")

# Load common databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L1B:,M=H1,ASG=$(ASG)")


iocInit()

# =====================================================
# Turn on caPutLogging:
# Log values only on change to the iocLogServer:
#caPutLogInit("${EPICS_CA_PUT_LOG_ADDR}")
#caPutLogShow(2)
# =====================================================

## Start sequence programs, one for each SSA
# This must be done after iocInit
#
# SSA1: L1B:H110
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H110:SSA:")
epicsThreadSleep(0.25)

# SSA2: L1B:H120
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H120:SSA:")
epicsThreadSleep(0.25)

# SSA3: L1B:H130
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H130:SSA:")
epicsThreadSleep(0.25)

# SSA4: L1B:H140
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H140:SSA:")
epicsThreadSleep(0.25)

# SSA5: L1B:H150
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H150:SSA:")
epicsThreadSleep(0.25)

# SSA6: L1B:H160
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H160:SSA:")
epicsThreadSleep(0.25)

# SSA7: L1B:H170
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H170:SSA:")
epicsThreadSleep(0.25)

# SSA8: L1B:H180
seq(seq_ssa_RK_CA, "P=ACCL:L1B:H180:SSA:")
epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# Enable SRF permits
dbpf("ACCL:L1B:H110:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:H120:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:H130:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:H140:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:H150:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:H160:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:H170:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:H180:SSA:SRFPermit", 1)

# End of file

