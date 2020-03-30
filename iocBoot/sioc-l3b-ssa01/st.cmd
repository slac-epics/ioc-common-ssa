#!../../bin/rhel6-x86_64/ssa

## Environment variables
epicsEnvSet("LOCATION", "L3B CM 16-19")
epicsEnvSet("IOC_P",    "SIOC:L3B:SSA01")

< $(TOP)/iocBoot/common/st.cmd.soft


## Run IOC shell script for each SSA
#
# SSAs for CM 17-19 are not ready yet so are commented out
#
# SSA1: L3B:1610
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1610, P=ACCL:L3B:1610:SSA:, IP=ssa-l3b-1610")

# SSA2: L3B:1620
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1620, P=ACCL:L3B:1620:SSA:, IP=ssa-l3b-1620")

# SSA3: L3B:1630
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1630, P=ACCL:L3B:1630:SSA:, IP=ssa-l3b-1630")

# SSA4: L3B:1640
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1640, P=ACCL:L3B:1640:SSA:, IP=ssa-l3b-1640")

# SSA5: L3B:1650
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1650, P=ACCL:L3B:1650:SSA:, IP=ssa-l3b-1650")

# SSA6: L3B:1660
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1660, P=ACCL:L3B:1660:SSA:, IP=ssa-l3b-1660")

# SSA7: L3B:1670
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1670, P=ACCL:L3B:1670:SSA:, IP=ssa-l3b-1670")

# SSA8: L3B:1680
iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1680, P=ACCL:L3B:1680:SSA:, IP=ssa-l3b-1680")

## SSA9: L3B:1710
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1710, P=ACCL:L3B:1710:SSA:, IP=ssa-l3b-1710")
#
## SSA10: L3B:1720
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1720, P=ACCL:L3B:1720:SSA:, IP=ssa-l3b-1720")
#
## SSA11: L3B:1730
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1730, P=ACCL:L3B:1730:SSA:, IP=ssa-l3b-1730")
#
## SSA12: L3B:1740
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1740, P=ACCL:L3B:1740:SSA:, IP=ssa-l3b-1740")
#
## SSA13: L3B:1750
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1750, P=ACCL:L3B:1750:SSA:, IP=ssa-l3b-1750")
#
## SSA14: L3B:1760
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1760, P=ACCL:L3B:1760:SSA:, IP=ssa-l3b-1760")
#
## SSA15: L3B:1770
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1770, P=ACCL:L3B:1770:SSA:, IP=ssa-l3b-1770")
#
## SSA16: L3B:1780
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1780, P=ACCL:L3B:1780:SSA:, IP=ssa-l3b-1780")
#
## SSA17: L3B:1810
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1810, P=ACCL:L3B:1810:SSA:, IP=ssa-l3b-1810")
#
## SSA18: L3B:1820
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1820, P=ACCL:L3B:1820:SSA:, IP=ssa-l3b-1820")
#
## SSA19: L3B:1830
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1830, P=ACCL:L3B:1830:SSA:, IP=ssa-l3b-1830")
#
## SSA20: L3B:1840
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1840, P=ACCL:L3B:1840:SSA:, IP=ssa-l3b-1840")
#
## SSA21: L3B:1850
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1850, P=ACCL:L3B:1850:SSA:, IP=ssa-l3b-1850")
#
## SSA22: L3B:1860
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1860, P=ACCL:L3B:1860:SSA:, IP=ssa-l3b-1860")
#
## SSA23: L3B:1870
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1870, P=ACCL:L3B:1870:SSA:, IP=ssa-l3b-1870")
#
## SSA24: L3B:1880
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1880, P=ACCL:L3B:1880:SSA:, IP=ssa-l3b-1880")
#
## SSA25: L3B:1910
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1910, P=ACCL:L3B:1910:SSA:, IP=ssa-l3b-1910")
#
## SSA26: L3B:1920
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1920, P=ACCL:L3B:1920:SSA:, IP=ssa-l3b-1920")
#
## SSA27: L3B:1930
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1930, P=ACCL:L3B:1930:SSA:, IP=ssa-l3b-1930")
#
## SSA28: L3B:1940
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1940, P=ACCL:L3B:1940:SSA:, IP=ssa-l3b-1940")
#
## SSA29: L3B:1950
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1950, P=ACCL:L3B:1950:SSA:, IP=ssa-l3b-1950")
#
## SSA30: L3B:1960
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1960, P=ACCL:L3B:1960:SSA:, IP=ssa-l3b-1960")
#
## SSA31: L3B:1970
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1970, P=ACCL:L3B:1970:SSA:, IP=ssa-l3b-1970")
#
## SSA32: L3B:1980
#iocshLoad("$(TOP)/iocBoot/common/startup.RK_CA1300.iocsh", "PORT=L3B_1980, P=ACCL:L3B:1980:SSA:, IP=ssa-l3b-1980")


# Load common SSA databases
# SSAs for CM 17-19 are not ready yet so are commented out
dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:, M=16")
#dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:, M=17")
#dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:, M=18")
#dbLoadRecords("db/cryomoduleCommon.db", "P=ACCL:L3B:, M=19")


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
# SSAs for CM 17-19 are not ready yet so are commented out
#
# SSA1: L3B:1610
seq(seq_ssa_CA1300, "P=ACCL:L3B:1610:SSA:")
epicsThreadSleep(0.25)

# SSA2: L3B:1620
seq(seq_ssa_CA1300, "P=ACCL:L3B:1620:SSA:")
epicsThreadSleep(0.25)

# SSA3: L3B:1630
seq(seq_ssa_CA1300, "P=ACCL:L3B:1630:SSA:")
epicsThreadSleep(0.25)

# SSA4: L3B:1640
seq(seq_ssa_CA1300, "P=ACCL:L3B:1640:SSA:")
epicsThreadSleep(0.25)

# SSA5: L3B:1650
seq(seq_ssa_CA1300, "P=ACCL:L3B:1650:SSA:")
epicsThreadSleep(0.25)

# SSA6: L3B:1660
seq(seq_ssa_CA1300, "P=ACCL:L3B:1660:SSA:")
epicsThreadSleep(0.25)

# SSA7: L3B:1670
seq(seq_ssa_CA1300, "P=ACCL:L3B:1670:SSA:")
epicsThreadSleep(0.25)

# SSA8: L3B:1680
seq(seq_ssa_CA1300, "P=ACCL:L3B:1680:SSA:")
epicsThreadSleep(0.25)

## SSA9: L3B:1710
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1710:SSA:")
#epicsThreadSleep(0.25)
#
## SSA10: L3B:1720
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1720:SSA:")
#epicsThreadSleep(0.25)
#
## SSA11: L3B:1730
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1730:SSA:")
#epicsThreadSleep(0.25)
#
## SSA12: L3B:1740
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1740:SSA:")
#epicsThreadSleep(0.25)
#
## SSA13: L3B:1750
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1750:SSA:")
#epicsThreadSleep(0.25)
#
## SSA14: L3B:1760
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1760:SSA:")
#epicsThreadSleep(0.25)
#
## SSA15: L3B:1770
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1770:SSA:")
#epicsThreadSleep(0.25)
#
## SSA16: L3B:1780
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1780:SSA:")
#epicsThreadSleep(0.25)
#
## SSA17: L3B:1810
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1810:SSA:")
#epicsThreadSleep(0.25)
#
## SSA18: L3B:1820
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1820:SSA:")
#epicsThreadSleep(0.25)
#
## SSA19: L3B:1830
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1830:SSA:")
#epicsThreadSleep(0.25)
#
## SSA20: L3B:1840
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1840:SSA:")
#epicsThreadSleep(0.25)
#
## SSA21: L3B:1850
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1850:SSA:")
#epicsThreadSleep(0.25)
#
## SSA22: L3B:1860
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1860:SSA:")
#epicsThreadSleep(0.25)
#
## SSA23: L3B:1870
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1870:SSA:")
#epicsThreadSleep(0.25)
#
## SSA24: L3B:1880
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1880:SSA:")
#epicsThreadSleep(0.25)
#
## SSA25: L3B:1910
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1910:SSA:")
#epicsThreadSleep(0.25)
#
## SSA26: L3B:1920
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1920:SSA:")
#epicsThreadSleep(0.25)
#
## SSA27: L3B:1930
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1930:SSA:")
#epicsThreadSleep(0.25)
#
## SSA28: L3B:1940
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1940:SSA:")
#epicsThreadSleep(0.25)
#
## SSA29: L3B:1950
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1950:SSA:")
#epicsThreadSleep(0.25)
#
## SSA30: L3B:1960
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1960:SSA:")
#epicsThreadSleep(0.25)
#
## SSA31: L3B:1970
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1970:SSA:")
#epicsThreadSleep(0.25)
#
## SSA32: L3B:1980
#seq(seq_ssa_CA1300, "P=ACCL:L3B:1980:SSA:")
#epicsThreadSleep(0.25)


# Autosave start
< $(TOP)/iocBoot/common/autosave_init.cmd

cd $(TOP)

# End of file

