#!../../bin/rhel6-x86_64/ssa

< envPaths

## Environment variables
epicsEnvSet("LOCATION", "B15 SSA test area")
epicsEnvSet("IOC_NAME", "SIOC:B15:SSA6")
epicsEnvSet("ASG",      "DEFAULT")

< $(TOP)/iocBoot/common/st.cmd.soft

# Set access security
asSetFilename("${TOP}/iocBoot/common/no_security.acf")

## Run IOC shell script for beckhoff
iocshLoad("$(TOP)/iocBoot/common/init_bkh_b15.iocsh", "BKH_PORT=BKH1,BKH_IP=bkhf-b15-if01")

# Load Records
dbLoadRecords("db/bkh_b15.db", "P=BKHF:B15:IF01,M=BKH1,LOC=$(LOCATION),IOC=$(IOC)")
dbLoadRecords("db/asynRecord.db", "P=BKHF:B15:IF01:,R=Asyn,PORT=BKH1,ADDR=0,IMAX=0,OMAX=0")
dbLoadRecords("db/statistics.template", "P=BKHF:B15:IF01:,R=Modbus,PORT=BKH1,SCAN=10 second")


iocInit()

# =====================================================
# Turn on caPutLogging:
# Log values only on change to the iocLogServer:
#caPutLogInit("${EPICS_CA_PUT_LOG_ADDR}")
#caPutLogShow(2)
# =====================================================

# Autosave start
< $(TOP)/iocBoot/common/autosave_start.cmd

cd $(TOP)

# End of file

