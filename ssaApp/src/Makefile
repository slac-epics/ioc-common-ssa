TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#========================================

# ================================================
# Build the IOC application
# ================================================
# This will attempt to build an IOC application 
# for every target including the host computer.
PROD_NAME = ssa
PROD_IOC = $(PROD_NAME)

# Use the following for RTEMS Only IOCs
#PROD_IOC_RTEMS = $(PROD_NAME)

# $(PROD_NAME).dbd will be created and installed
DBD += $(PROD_NAME).dbd

# $(PROD_NAME).dbd will be made up from these files:
$(PROD_NAME)_DBD += base.dbd
$(PROD_NAME)_DBD += devIocStats.dbd
$(PROD_NAME)_DBD += asSupport.dbd
$(PROD_NAME)_DBD += caPutLog.dbd
$(PROD_NAME)_DBD += $(PROD_NAME)ASubSupport.dbd
$(PROD_NAME)_DBD += $(PROD_NAME)SeqSupport.dbd

# ================================================================================
# The system command will be mainly used by linux hosted IOCs
# Very useful for changing kernel thread priorities for kernel drivers
# ================================================================================
$(PROD_NAME)_DBD += system.dbd

# If you don't have an EVR comment the following two lines:
#$(PROD_NAME)_DBD += evrSupport.dbd
#$(PROD_NAME)_DBD += devMrfEr.dbd

$(PROD_NAME)_DBD += asyn.dbd
$(PROD_NAME)_DBD += drvAsynIPPort.dbd
$(PROD_NAME)_DBD += modbusSupport.dbd

# Breakpoint tables for power conversion
$(PROD_NAME)_DBD += bptSsaPwrFwd.dbd
$(PROD_NAME)_DBD += bptSsaPwrRef.dbd
$(PROD_NAME)_DBD += bptSsaPwrDrv.dbd

# ======================================================================
# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
$(PROD_NAME)_SRCS += $(PROD_NAME)_registerRecordDeviceDriver.cpp

$(PROD_NAME)_SRCS_DEFAULT += $(PROD_NAME)Main.cpp

$(PROD_NAME)_SRCS_vxWorks += -nil-

# ========================================================================
# ========================================================================
# Add locally compiled object code
# For example, subroutines
# ========================================================================
$(PROD_NAME)_SRCS += $(PROD_NAME)ASub.c
$(PROD_NAME)_SRCS += $(PROD_NAME)Seq_RK_CA1300.st
$(PROD_NAME)_SRCS += $(PROD_NAME)Seq_RK_CA186.st
$(PROD_NAME)_SRCS += $(PROD_NAME)Seq_RK_CA3900.st

# =====================================================
# Link in the code from other libraries
# =====================================================
# Needed to link in iocAdmin support
$(PROD_NAME)_LIBS += devIocStats

# Needed to link in autosave support
$(PROD_NAME)_LIBS += autosave

# Needed to link caPutLog support
$(PROD_NAME)_LIBS += caPutLog

$(PROD_NAME)_LIBS += modbus
$(PROD_NAME)_LIBS += asyn


# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file
#
ifneq ($(SNCSEQ),)
    $(PROD_NAME)_LIBS += seq pv
endif

$(PROD_NAME)_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

