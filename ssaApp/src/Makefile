TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#========================================

# ================================================
# Build the IOC application
# ================================================
PROD_NAME = ssa
PROD_IOC = $(PROD_NAME)

# $(PROD_NAME).dbd will be created and installed
DBD += $(PROD_NAME).dbd

# $(PROD_NAME).dbd will be made up from these files:
$(PROD_NAME)_DBD += base.dbd
$(PROD_NAME)_DBD += asyn.dbd
$(PROD_NAME)_DBD += drvAsynIPPort.dbd
$(PROD_NAME)_DBD += modbusSupport.dbd
$(PROD_NAME)_DBD += devIocStats.dbd
$(PROD_NAME)_DBD += iocAdmin.dbd
ifdef SNCSEQ
$(PROD_NAME)_DBD += devSeqCar.dbd
endif
$(PROD_NAME)_DBD += asSupport.dbd
$(PROD_NAME)_DBD += caPutLog.dbd
$(PROD_NAME)_DBD += system.dbd
ifdef BKHASYN
$(PROD_NAME)_DBD += drvBkhAsyn.dbd
endif

$(PROD_NAME)_DBD += $(PROD_NAME)ASubSupport.dbd
ifdef SNCSEQ
$(PROD_NAME)_DBD += $(PROD_NAME)SeqSupport.dbd
endif

ifdef EPICS_QSRV_MAJOR_VERSION
$(PROD_NAME)_DBD += PVAServerRegister.dbd
$(PROD_NAME)_DBD += qsrv.dbd
endif

# If you don't have an EVR comment the following two lines:
#$(PROD_NAME)_DBD += evrSupport.dbd
#$(PROD_NAME)_DBD += devMrfEr.dbd

# ======================================================================
# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
$(PROD_NAME)_SRCS += $(PROD_NAME)_registerRecordDeviceDriver.cpp
$(PROD_NAME)_SRCS_DEFAULT += $(PROD_NAME)Main.cpp

# ========================================================================
# Add locally compiled object code
# For example, subroutines
# ========================================================================
$(PROD_NAME)_SRCS += $(PROD_NAME)ASub.c
ifdef SNCSEQ
$(PROD_NAME)_SRCS += $(PROD_NAME)Seq_RK_CA.st
$(PROD_NAME)_SRCS += $(PROD_NAME)Seq_sys0_common.st
endif

# =====================================================
# Link in the code from other libraries
# =====================================================
$(PROD_NAME)_LIBS += devIocStats
$(PROD_NAME)_LIBS += autosave
$(PROD_NAME)_LIBS += caPutLog
ifdef BKHASYN
$(PROD_NAME)_LIBS += bkhAsyn
endif
$(PROD_NAME)_LIBS += modbus
$(PROD_NAME)_LIBS += asyn

ifdef EPICS_QSRV_MAJOR_VERSION
$(PROD_NAME)_LIBS += qsrv
$(PROD_NAME)_LIBS += $(EPICS_BASE_PVA_CORE_LIBS)
endif

# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file
ifdef SNCSEQ
$(PROD_NAME)_LIBS += seqCar seq pv
endif

$(PROD_NAME)_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

