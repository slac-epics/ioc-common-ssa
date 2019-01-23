#!../../bin/rhel6-x86_64/ssa

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/ssa.dbd")
ssa_registerRecordDeviceDriver(pdbbase)


## Set up environment variables
epicsEnvSet("ENGINEER", "Garth Brown")
epicsEnvSet("LOCATION", "B15 SSA test stand 1")
epicsEnvSet("IOC_P",    "SIOC:B15:SSA1")

## Tag log messages with IOC name
# How to escape the "iocb15-rf01" as the PERL program
# will try to repplace it.
# So, uncomment the following and remove the backslash
epicsEnvSet("EPICS_IOC_LOG_CLIENT_INET","${IOC}")


## The following two environment variables should be set for each SSA
# epicsEnvSet("P",        "<pv_prefix>")
# epicsEnvSet("IP",       "<ssa_ip_address>")
#
## Source the following file for each SSA after setting the two environment variables P and IP
# < iocBoot/startup.modbus_RK_CA1300.cmd
#
## Load record instances for each SSA, after setting the environment variable P
# dbLoadRecords("db/ssa_RK_CA1300.db", "P=$(P)")

# SSA1: L1B:0210
epicsEnvSet("P",        "ACCL:L1B:0210:SSA:")
epicsEnvSet("IP",       "ssa-b15-rf0110")
< iocBoot/common/startup.modbus_RK_CA1300.cmd
dbLoadRecords("db/ssa_RK_CA1300_4.6kW.db", "P=$(P)")
epicsThreadSleep(0.5)

## SSA2: L1B:0220
#epicsEnvSet("P",        "ACCL:L1B:0220:SSA:")
#epicsEnvSet("IP",       "ssa-b15-rf0120")
#< iocBoot/common/startup.modbus_RK_CA1300.cmd
#dbLoadRecords("db/ssa_RK_CA1300.db", "P=$(P)")
#epicsThreadSleep(0.5)

# =====================================================================
# Load iocAdmin databases to support IOC Health and monitoring
# =====================================================================
dbLoadRecords("db/iocAdminSoft.db","IOC=${IOC_P}")
dbLoadRecords("db/iocAdminScanMon.db","IOC=${IOC_P}")
dbLoadRecords("db/iocRelease.db","IOC=${IOC_P}")

# =====================================================================
# Load database for autosave status
# =====================================================================
dbLoadRecords("db/save_restoreStatus.db", "P=${IOC_P}:")


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
save_restoreSet_status_prefix("${IOC_P}:")

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
seq(seq_ssa_CA1300, "P=ACCL:L1B:0210:SSA:")
epicsThreadSleep(0.5)

# SSA2: L1B:0220
#seq(seq_ssa_CA1300, "P=ACCL:L1B:0220:SSA:")
#epicsThreadSleep(0.5)

## Start autosave process:
cd("${IOC_DATA}/${IOC}/autosave-req")
makeAutosaveFiles()
create_monitor_set("info_settings.req", 20, "")


