TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

DB_INSTALLS += $(ASYN)/db/asynRecord.db
DB_INSTALLS += $(MODBUS)/db/bo_word.template
DB_INSTALLS += $(MODBUS)/db/longout.template
DB_INSTALLS += $(MODBUS)/db/bi_word.template
DB_INSTALLS += $(MODBUS)/db/longin.template
DB_INSTALLS += $(MODBUS)/db/ai.template
DB_INSTALLS += $(MODBUS)/db/intarray_in.template
DB_INSTALLS += $(MODBUS)/db/statistics.template
DB_INSTALLS += $(MODBUS)/db/poll_delay.template

#----------------------------------------------------
# Create and install (or just install)
# databases, templates, substitutions like this
DB += ssa_RK_CA1300.db
DB += ssa_RK_CA186.db
DB += ssa_BBEF.db

# Install Common databases needed by All IOCs
# ========================================================
# Install databases from iocAdmin package
# These databases support IOC Health and Monitoring
# ========================================================
# HardIOC using RTEMS
DB_INSTALLS += $(IOCADMIN)/db/iocAdminRTEMS.db
# SoftIOC
DB_INSTALLS += $(IOCADMIN)/db/iocAdminSoft.db

DB_INSTALLS += $(IOCADMIN)/db/iocAdminScanMon.db
DB_INSTALLS += $(IOCADMIN)/db/iocScanMonSum.db
DB_INSTALLS += $(IOCADMIN)/db/iocScanMon.db
IOCRELEASE_DB += iocRelease.db

# Install Database to support reading the status of the autosave package:
DB_INSTALLS += $(AUTOSAVE)/db/save_restoreStatus.db

# =======================================================================

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

