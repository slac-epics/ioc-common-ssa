#!../../../bin/rhel6-x86_64/ssa

# For LERF only
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
# How to escape the "sioc-l1b-ssa01" as the PERL program
# will try to repplace it.
# So, uncomment the following and remove the backslash
epicsEnvSet("EPICS_IOC_LOG_CLIENT_INET","${IOC}")


## Run IOC shell script for each SSA
#
# SSA1: L1B:0210
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0210,P=ACCL:L1B:0210:SSA:,CM=02,CAV1=1,ASG=$(ASG),IP=lcls-ssa11")

# SSA1: L1B:0220
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0220,P=ACCL:L1B:0220:SSA:,CM=02,CAV1=2,ASG=$(ASG),IP=lcls-ssa12")

# SSA1: L1B:0230
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0230,P=ACCL:L1B:0230:SSA:,CM=02,CAV1=3,ASG=$(ASG),IP=lcls-ssa13")

# SSA1: L1B:0240
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0240,P=ACCL:L1B:0240:SSA:,CM=02,CAV1=4,ASG=$(ASG),IP=lcls-ssa14")

# SSA1: L1B:0250
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0250,P=ACCL:L1B:0250:SSA:,CM=02,CAV1=5,ASG=$(ASG),IP=lcls-ssa15")

# SSA1: L1B:0260
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0260,P=ACCL:L1B:0260:SSA:,CM=02,CAV1=6,ASG=$(ASG),IP=lcls-ssa16")

# SSA1: L1B:0270
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0270,P=ACCL:L1B:0270:SSA:,CM=02,CAV1=7,ASG=$(ASG),IP=lcls-ssa17")

# SSA1: L1B:0280
# 3.8kW (cryomodule)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L1B_0280,P=ACCL:L1B:0280:SSA:,CM=02,CAV1=8,ASG=$(ASG),IP=lcls-ssa18")

# Load common databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L1B:,M=02,ASG=$(ASG)")


# =====================================================================
# Load iocAdmin databases to support IOC Health and monitoring
# =====================================================================
dbLoadRecords("db/iocAdminSoft.db","IOC=${IOC_NAME}")
dbLoadRecords("db/iocAdminScanMon.db","IOC=${IOC_NAME}")
dbLoadRecords("db/iocRelease.db","IOC=${IOC_NAME}")

# =====================================================================
# Load database for autosave status
# =====================================================================
dbLoadRecords("db/save_restoreStatus.db", "P=${IOC_NAME}:")


# =====================================================================
## Begin: Set up autosave/restore
# =====================================================================

# ============================================================
# If all PVs don't connect continue anyway
# ============================================================
save_restoreSet_IncompleteSetsOk(1)

# ============================================================
# created save/restore backup files with date string
# useful for recovery.
# ============================================================
save_restoreSet_DatedBackupFiles(1)

# ============================================================
# Where to find the list of PVs to save
# ============================================================
set_requestfile_path("${IOC_DATA}/${IOC}/autosave-req")

# ============================================================
# Where to write the save files that will be used to restore
# ============================================================
set_savefile_path("${IOC_DATA}/${IOC}/autosave")

# ============================================================
# Prefix that is use to update save/restore status database
# records
# ============================================================
save_restoreSet_status_prefix("${IOC_NAME}:")

## Restore datasets
set_pass0_restoreFile("info_settings.sav")
set_pass1_restoreFile("info_settings.sav")

# =====================================================================
# End: Setup autosave/restore
# =====================================================================

# =====================================================================
# Channel Access Security:
# This is required if you use caPutLog.
# Set access security file
# Load common LCLS Access Configuration File
< ${ACF_INIT}

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
# SSA1: L1B:0210
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0210:SSA:")
epicsThreadSleep(0.5)

# SSA2: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0220:SSA:")
epicsThreadSleep(0.5)

# SSA3: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0230:SSA:")
epicsThreadSleep(0.5)

# SSA4: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0240:SSA:")
epicsThreadSleep(0.5)

# SSA5: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0250:SSA:")
epicsThreadSleep(0.5)

# SSA6: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0260:SSA:")
epicsThreadSleep(0.5)

# SSA7: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0270:SSA:")
epicsThreadSleep(0.5)

# SSA8: L1B:0220
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0280:SSA:")
epicsThreadSleep(0.5)

## Start autosave process:
cd("${IOC_DATA}/${IOC}/autosave-req")
makeAutosaveFiles()
create_monitor_set("info_settings.req", 20, "")

cd $(TOP)

# Enable SRF permits
dbpf("ACCL:L1B:0210:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0220:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0230:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0240:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0250:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0260:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0270:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0280:SSA:SRFPermit", 1)

# End of file

