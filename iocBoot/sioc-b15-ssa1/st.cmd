#!../../bin/rhel6-x86_64/ssa

## You may have to change ssa to something else
## everywhere it appears in this file

< envPaths


cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/ssa.dbd")
ssa_registerRecordDeviceDriver(pdbbase)


# ====================================================================
# Setup some additional environment variables
# ====================================================================
# Setup environment variables
epicsEnvSet("ENGINEER", "Garth Brown")
epicsEnvSet("LOCATION", "B15 SSA test stand 1")
epicsEnvSet("P",        "ACCL:L1B:0210:SSA:")
epicsEnvSet("IP",       "ssa-b15-rf0110")
epicsEnvSet("IOC_P",    "SIOC:B15:SSA1")

# tag log messages with IOC name
# How to escape the "iocb15-rf01" as the PERL program
# will try to repplace it.
# So, uncomment the following and remove the backslash
epicsEnvSet("EPICS_IOC_LOG_CLIENT_INET","${IOC}")

# ========================================================
# Support Large Arrays/Waveforms; Number in Bytes
# Please calculate the size of the largest waveform
# that you support in your IOC.  Do not just copy numbers
# from other apps.  This will only lead to an exhaustion
# of resources and problems with your IOC.
# The default maximum size for a channel access array is
# 16K bytes.
# ========================================================
#epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES", "65536")

# END: Additional environment variables
# ====================================================================


########################################################################
# BEGIN: Hardware specific configuration
#######################################################################

# Uses environment variables $P and $IP, set above, to connect to the ssa
< iocBoot/startup.modbus_RK_CA1300.cmd

# END: Hardware specific configuration
# =====================================================================


########################################################################
# BEGIN: Load the record databases
#######################################################################
# =====================================================================
# Load iocAdmin databases to support IOC Health and monitoring
# =====================================================================
dbLoadRecords("db/iocAdminSoft.db","IOC=${IOC_P}")
dbLoadRecords("db/iocAdminScanMon.db","IOC=${IOC_P}")

# The following database is a result of a python parser
# which looks at RELEASE_SITE and RELEASE to discover
# versions of software your IOC is referencing
# The python parser is part of iocAdmin
dbLoadRecords("db/iocRelease.db","IOC=${IOC_P}")

# =====================================================================
# Load database for autosave status
# =====================================================================
dbLoadRecords("db/save_restoreStatus.db", "P=${IOC_P}:")


# =====================================================================
#Load Additional databases:
# =====================================================================
## Load record instances
dbLoadRecords("db/ssa_RK_CA1300.db", "P=$(P)")

# END: Loading the record databases
########################################################################

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

## Start any sequence programs
seq(seq_ssa_CA1300, "P=$(P)")

## Start autosave process:
cd("${IOC_DATA}/${IOC}/autosave-req")
makeAutosaveFiles()
create_monitor_set("info_settings.req",20,"")


