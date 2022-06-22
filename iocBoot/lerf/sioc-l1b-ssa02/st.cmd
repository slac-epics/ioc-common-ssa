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
epicsEnvSet("LOCATION", "L1B Cryomodule 3")
epicsEnvSet("IOC_NAME", "SIOC:L1B:SSA02")
epicsEnvSet("ASG",      "DEFAULT")

## Tag log messages with IOC name
# How to escape the "sioc-l1b-ssa02" as the PERL program
# will try to repplace it.
# So, uncomment the following and remove the backslash
epicsEnvSet("EPICS_IOC_LOG_CLIENT_INET","${IOC}")


## Run IOC shell script for each SSA
#
# SSA1: L1B:0310
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0310,P=ACCL:L1B:0310:SSA:,CM=03,CAV1=1,ASG=$(ASG),IP=lcls-ssa21")

# SSA1: L1B:0320
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0320,P=ACCL:L1B:0320:SSA:,CM=03,CAV1=2,ASG=$(ASG),IP=lcls-ssa22")

# SSA1: L1B:0330
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0330,P=ACCL:L1B:0330:SSA:,CM=03,CAV1=3,ASG=$(ASG),IP=lcls-ssa23")

# SSA1: L1B:0340
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0340,P=ACCL:L1B:0340:SSA:,CM=03,CAV1=4,ASG=$(ASG),IP=lcls-ssa24")

# SSA1: L1B:0350
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0350,P=ACCL:L1B:0350:SSA:,CM=03,CAV1=5,ASG=$(ASG),IP=lcls-ssa25")

# SSA1: L1B:0360
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0360,P=ACCL:L1B:0360:SSA:,CM=03,CAV1=6,ASG=$(ASG),IP=lcls-ssa26")

# SSA1: L1B:0370
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0370,P=ACCL:L1B:0370:SSA:,CM=03,CAV1=7,ASG=$(ASG),IP=lcls-ssa27")

# SSA1: L1B:0380
# 7kW (HE)
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300_7kW.iocsh", "PORT=L1B_0380,P=ACCL:L1B:0380:SSA:,CM=03,CAV1=8,ASG=$(ASG),IP=lcls-ssa28")

# Load common databases
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L1B:,M=03,ASG=$(ASG)")


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
# SSA1: L1B:0310
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0310:SSA:")
epicsThreadSleep(0.5)

# SSA2: L1B:0320
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0320:SSA:")
epicsThreadSleep(0.5)

# SSA3: L1B:0320
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0330:SSA:")
epicsThreadSleep(0.5)

# SSA4: L1B:0320
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0340:SSA:")
epicsThreadSleep(0.5)

# SSA5: L1B:0320
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0350:SSA:")
epicsThreadSleep(0.5)

# SSA6: L1B:0320
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0360:SSA:")
epicsThreadSleep(0.5)

# SSA7: L1B:0320
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0370:SSA:")
epicsThreadSleep(0.5)

# SSA8: L1B:0320
seq(seq_ssa_RK_CA, "P=ACCL:L1B:0380:SSA:")
epicsThreadSleep(0.5)

## Start autosave process:
cd("${IOC_DATA}/${IOC}/autosave-req")
makeAutosaveFiles()
create_monitor_set("info_settings.req", 20, "")

cd $(TOP)

# Enable SRF permits
dbpf("ACCL:L1B:0310:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0320:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0330:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0340:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0350:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0360:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0370:SSA:SRFPermit", 1)
dbpf("ACCL:L1B:0380:SSA:SRFPermit", 1)

# End of file

