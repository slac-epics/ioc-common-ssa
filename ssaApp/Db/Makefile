TOP=../..
include $(TOP)/configure/CONFIG

#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

# Install Common databases needed by All IOCs
# ========================================================
# iocAdmin
DB_INSTALLS += $(IOCADMIN)/db/iocAdminSoft.db
DB_INSTALLS += $(IOCADMIN)/db/iocAdminScanMon.db
DB_INSTALLS += $(IOCADMIN)/db/iocScanMonSum.db
DB_INSTALLS += $(IOCADMIN)/db/iocScanMon.db
IOCRELEASE_DB += iocRelease.db

# Sequencer
ifdef SNCSEQ
DB_INSTALLS += $(SNCSEQ)/db/devSeqCar.db
endif

# Autosave
DB_INSTALLS += $(AUTOSAVE)/db/save_restoreStatus.db

# Modbus
DB_INSTALLS += $(ASYN)/db/asynRecord.db
DB_INSTALLS += $(MODBUS)/db/bo_word.template
DB_INSTALLS += $(MODBUS)/db/longout.template
DB_INSTALLS += $(MODBUS)/db/bi_word.template
DB_INSTALLS += $(MODBUS)/db/statistics.template
DB_INSTALLS += $(MODBUS)/db/poll_delay.template

# bkhAsyn
ifdef BKHASYN
DB_INSTALLS += $(BKHASYN)/db/bkhBi.db
DB_INSTALLS += $(BKHASYN)/db/bkhBo.db
DB_INSTALLS += $(BKHASYN)/db/bkhAi.db
DB_INSTALLS += $(BKHASYN)/db/bkhTemp.db
DB_INSTALLS += $(BKHASYN)/db/readwrite.db
DB_INSTALLS += $(BKHASYN)/db/bkhAErr.db
DB_INSTALLS += $(BKHASYN)/db/bk9000.db
DB_INSTALLS += $(BKHASYN)/db/ai_convert_autosave.template
endif

# SSAs
DB += ssa_RK_CA1300.db
DB += ssa_RK_CA1300_4.6kW.db
DB += ssa_RK_CA1300_7kW.db
DB += ssa_RK_CA186.db
DB += ssa_RK_CA186_modules.db
DB += ssa_RK_CA186_7kW.db
DB += ssa_RK_CA199.db
#DB += ssa_BBEF.db
DB += ssa_RK_CA3900.db

# Common SSA controls
DB += gunCommon.db
DB += buncherCommon.db
DB += cryomoduleCommon.db
DB += hlCommon.db
DB += ssa_sys0_common.db

# SSA stats: for CM, machine area, and entire linac
DB += ssa_stats.db

# Simulated SSAs: for development testing
DB += ssa_sim.db

# B15 beckhoff
ifdef BKHASYN
DB += bkh_b15.db
endif
# =======================================================================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

