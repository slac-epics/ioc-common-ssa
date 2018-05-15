# Modbus config for R&K CA186 SSA (for LCLS2 gun)
# Macros:
# P - the PV name prefix
# IP - The IP address or host name 

# Poll time in ms for read operations
epicsEnvSet("POLLTIME", "50")

# Use the following commands for TCP/IP
# drvAsynIPPortConfigure(const char *portName, const char *hostInfo,
# 			 unsigned int priority, int noAutoConnect,
#			 int noProcessEos);
#
drvAsynIPPortConfigure("$(P)", "$(IP):502", 0,0,1)

dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN,PORT=$(P),ADDR=0,IMAX=0,OMAX=0")

# modbusInterposeConfig(const char *portName, modbusLinkType linkType,
#			int timeoutMsec, int writeDelayMsec)
#
modbusInterposeConfig("$(P)", 0, 3000, 0)

# Modbus function code: 3 (Read Holding Registers, 16-bit word access)
# Start address: 1
# For each port, access 100 words as inputs
# Default data type: unsigned integer
#
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMsec, "plcType")
#
drvModbusAsynConfigure("RF00_In_Word", "$(P)", 1, 3,    1, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF01_In_Word", "$(P)", 1, 3,  101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF02_In_Word", "$(P)", 1, 3,  201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF03_In_Word", "$(P)", 1, 3,  301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF04_In_Word", "$(P)", 1, 3,  401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF05_In_Word", "$(P)", 1, 3,  501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF06_In_Word", "$(P)", 1, 3,  601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF07_In_Word", "$(P)", 1, 3,  701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF08_In_Word", "$(P)", 1, 3,  801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF09_In_Word", "$(P)", 1, 3,  901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF10_In_Word", "$(P)", 1, 3, 1001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF11_In_Word", "$(P)", 1, 3, 1101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF12_In_Word", "$(P)", 1, 3, 1201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF13_In_Word", "$(P)", 1, 3, 1301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF14_In_Word", "$(P)", 1, 3, 1401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF15_In_Word", "$(P)", 1, 3, 1501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF16_In_Word", "$(P)", 1, 3, 1601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF17_In_Word", "$(P)", 1, 3, 1701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF18_In_Word", "$(P)", 1, 3, 1801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF19_In_Word", "$(P)", 1, 3, 1901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF20_In_Word", "$(P)", 1, 3, 2001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF21_In_Word", "$(P)", 1, 3, 2101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF22_In_Word", "$(P)", 1, 3, 2201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF23_In_Word", "$(P)", 1, 3, 2301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF24_In_Word", "$(P)", 1, 3, 2401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF25_In_Word", "$(P)", 1, 3, 2501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF26_In_Word", "$(P)", 1, 3, 2601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF27_In_Word", "$(P)", 1, 3, 2701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF28_In_Word", "$(P)", 1, 3, 2801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF29_In_Word", "$(P)", 1, 3, 2901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF30_In_Word", "$(P)", 1, 3, 3001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF31_In_Word", "$(P)", 1, 3, 3101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF32_In_Word", "$(P)", 1, 3, 3201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF33_In_Word", "$(P)", 1, 3, 3301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF34_In_Word", "$(P)", 1, 3, 3401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF35_In_Word", "$(P)", 1, 3, 3501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF36_In_Word", "$(P)", 1, 3, 3601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF37_In_Word", "$(P)", 1, 3, 3701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF38_In_Word", "$(P)", 1, 3, 3801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF39_In_Word", "$(P)", 1, 3, 3901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF40_In_Word", "$(P)", 1, 3, 4001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF41_In_Word", "$(P)", 1, 3, 4101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF42_In_Word", "$(P)", 1, 3, 4201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF43_In_Word", "$(P)", 1, 3, 4301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF44_In_Word", "$(P)", 1, 3, 4401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("RF45_In_Word", "$(P)", 1, 3, 4501, 100, 0, $(POLLTIME), "RK")

# Load asyn record and statistics for first input port
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_IN,PORT=RF00_In_Word,ADDR=0,IMAX=0,OMAX=0")
dbLoadRecords("db/statistics.template", "P=$(P),R=ASYN_IN,PORT=RF00_In_Word,SCAN=10 second")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 1
# Access 8 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("RF00_Out_Word", "$(P)", 1, 6, 1, 8, 0, 1, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_OUT,PORT=RF00_Out_Word,ADDR=0,IMAX=0,OMAX=0")
dbLoadRecords("db/statistics.template", "P=$(P),R=ASYN_OUT,PORT=RF00_Out_Word,SCAN=10 second")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 30
# Access 4 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("RF01_Out_Word", "$(P)", 1, 6, 30, 4, 0, 1, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_OUT,PORT=RF01_Out_Word,ADDR=0,IMAX=0,OMAX=0")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 93
# Access 6 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("RF02_Out_Word", "$(P)", 1, 6, 93, 6, 0, 1, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_OUT,PORT=RF02_Out_Word,ADDR=0,IMAX=0,OMAX=0")

# Enable ASYN_TRACEIO_HEX on octet server
#asynSetTraceIOMask("$(P)", 0, 4)
# Enable ASYN_TRACE_ERROR and ASYN_TRACEIO_DRIVER on octet server
#asynSetTraceMask("$(P)", 0, 9)

# Enable ASYN_TRACEIO_HEX on modbus server
#asynSetTraceIOMask("RF00_In_Word", 0, 4)
# Enable all debugging on modbus server
#asynSetTraceMask("RF00_In_Word", 0, 255)
# Dump up to 512 bytes in asynTrace
asynSetTraceIOTruncateSize("RF00_In_Word", 0, 512)
