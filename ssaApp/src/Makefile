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
PROD_IOC = ssa

# Use the following for RTEMS Only IOCs
#PROD_IOC_RTEMS = ssa

# ssa.dbd will be created and installed
DBD += ssa.dbd

# ssa.dbd will be made up from these files:
ssa_DBD += base.dbd
ssa_DBD += devIocStats.dbd
ssa_DBD += asSupport.dbd
ssa_DBD += caPutLog.dbd
ssa_DBD += $(CEXP_DBDS)

# ================================================================================
# The system command will be mainly used by linux hosted IOCs
# Very useful for changing kernel thread priorities for kernel drivers
# ================================================================================
ssa_DBD += system.dbd

# If you don't have an EVR comment the following two lines:
#ssa_DBD += evrSupport.dbd
#ssa_DBD += devMrfEr.dbd

ssa_DBD += asyn.dbd
ssa_DBD += drvAsynIPPort.dbd
#ssa_DBD += asynRecord.dbd
ssa_DBD += modbusSupport.dbd
# ======================================================================
# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
ssa_SRCS += ssa_registerRecordDeviceDriver.cpp

ssa_SRCS_DEFAULT += ssaMain.cpp

ssa_SRCS_vxWorks += -nil-

# ========================================================================
# ========================================================================
# Add locally compiled object code
# For example, subroutines
# ========================================================================
# ssa_SRCS += file1.c
# ssa_SRCS += file2.c

# =====================================================
# Link in the code from other libraries
# =====================================================
# Needed to link in iocAdmin support
ssa_LIBS += devIocStats

# Needed to link in autosave support
ssa_LIBS += autosave

# Needed to link caPutLog support
ssa_LIBS += caPutLog

# Needed to link cexpsh() support
ssa_LIBS += $(CEXP_LIBS)

ssa_LIBS += modbus
ssa_LIBS += asyn


# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file

#ifneq ($(SNCSEQ),)
#    # This builds sncExample as a component of ssa
#    ssa_SNCFLAGS += +r
#    ssa_DBD += sncExample.dbd
#    ssa_SRCS += sncExample.stt
#    ssa_LIBS += seq pv

#    # The following builds sncProgram as a standalone application
#  ifneq ($(T_A),linuxRT-x86)
#    PROD_HOST += sncProgram
#    sncProgram_SNCFLAGS += +m
#    sncProgram_SRCS += sncProgram.st
#    sncProgram_LIBS += seq pv
#    sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)
#  endif
#endif

ssa_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

