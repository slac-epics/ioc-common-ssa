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

# For multiple SSAs per IOC, need to use a portName that depends on $(P)

drvModbusAsynConfigure("$(P)_inw00", "$(P)", 1, 3,    1, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw01", "$(P)", 1, 3,  101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw02", "$(P)", 1, 3,  201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw03", "$(P)", 1, 3,  301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw04", "$(P)", 1, 3,  401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw05", "$(P)", 1, 3,  501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw06", "$(P)", 1, 3,  601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw07", "$(P)", 1, 3,  701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw08", "$(P)", 1, 3,  801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw09", "$(P)", 1, 3,  901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw10", "$(P)", 1, 3, 1001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw11", "$(P)", 1, 3, 1101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw12", "$(P)", 1, 3, 1201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw13", "$(P)", 1, 3, 1301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw14", "$(P)", 1, 3, 1401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw15", "$(P)", 1, 3, 1501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw16", "$(P)", 1, 3, 1601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw17", "$(P)", 1, 3, 1701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw18", "$(P)", 1, 3, 1801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw19", "$(P)", 1, 3, 1901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw20", "$(P)", 1, 3, 2001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw21", "$(P)", 1, 3, 2101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw22", "$(P)", 1, 3, 2201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw23", "$(P)", 1, 3, 2301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw24", "$(P)", 1, 3, 2401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw25", "$(P)", 1, 3, 2501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw26", "$(P)", 1, 3, 2601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw27", "$(P)", 1, 3, 2701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw28", "$(P)", 1, 3, 2801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw29", "$(P)", 1, 3, 2901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw30", "$(P)", 1, 3, 3001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw31", "$(P)", 1, 3, 3101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw32", "$(P)", 1, 3, 3201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw33", "$(P)", 1, 3, 3301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw34", "$(P)", 1, 3, 3401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw35", "$(P)", 1, 3, 3501, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw36", "$(P)", 1, 3, 3601, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw37", "$(P)", 1, 3, 3701, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw38", "$(P)", 1, 3, 3801, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw39", "$(P)", 1, 3, 3901, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw40", "$(P)", 1, 3, 4001, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw41", "$(P)", 1, 3, 4101, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw42", "$(P)", 1, 3, 4201, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw43", "$(P)", 1, 3, 4301, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw44", "$(P)", 1, 3, 4401, 100, 0, $(POLLTIME), "RK")
drvModbusAsynConfigure("$(P)_inw45", "$(P)", 1, 3, 4501, 100, 0, $(POLLTIME), "RK")

# Load asyn record and statistics for first input port
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_IN,PORT=$(P)_inw00,ADDR=0,IMAX=0,OMAX=0")
dbLoadRecords("db/statistics.template", "P=$(P),R=ASYN_IN,PORT=$(P)_inw00,SCAN=10 second")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 1
# Access 8 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("$(P)_outw00", "$(P)", 1, 6, 1, 8, 0, 1, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_OUT,PORT=$(P)_outw00,ADDR=0,IMAX=0,OMAX=0")
dbLoadRecords("db/statistics.template", "P=$(P),R=ASYN_OUT,PORT=$(P)_outw00,SCAN=10 second")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 30
# Access 4 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("$(P)_outw01", "$(P)", 1, 6, 30, 4, 0, 1, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_OUT,PORT=$(P)_outw01,ADDR=0,IMAX=0,OMAX=0")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 93
# Access 6 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("$(P)_outw02", "$(P)", 1, 6, 93, 6, 0, 1, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_OUT,PORT=$(P)_outw02,ADDR=0,IMAX=0,OMAX=0")

# Enable ASYN_TRACEIO_HEX on octet server
#asynSetTraceIOMask("$(P)", 0, 4)
# Enable ASYN_TRACE_ERROR and ASYN_TRACEIO_DRIVER on octet server
#asynSetTraceMask("$(P)", 0, 9)

# Enable ASYN_TRACEIO_HEX on modbus server
#asynSetTraceIOMask("$(P)_inw00", 0, 4)
# Enable all debugging on modbus server
#asynSetTraceMask("$(P)_inw00", 0, 255)
# Dump up to 512 bytes in asynTrace
asynSetTraceIOTruncateSize("$(P)_inw00", 0, 512)

