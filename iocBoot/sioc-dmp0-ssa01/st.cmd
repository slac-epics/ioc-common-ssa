#!../../bin/rhel7-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "DMP0 XTCAV")
epicsEnvSet("IOC_NAME", "SIOC:DMP0:SSA01")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# XTCAV SSA: DMP0:360
iocshLoad("$(TOP)/iocBoot/common/startup.RK_GA11424BW200.iocsh", "PORT=DMP0_360,P=TCAV:DMP0:360:SSA:,IP=ssa-dmp0-360")

iocInit()

# =====================================================
# Turn on caPutLogging:
# Log values only on change to the iocLogServer:
caPutLogInit("${EPICS_CA_PUT_LOG_ADDR}")
caPutLogShow(2)
# =====================================================

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

