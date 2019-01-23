# Modbus config for R&K CA3900 SSA
# Macros:
# P - the PV name prefix
# IP - The IP address or host name 

# Use the following commands for TCP/IP
# drvAsynIPPortConfigure(const char *portName, const char *hostInfo,
# 			 unsigned int priority, int noAutoConnect,
#			 int noProcessEos);

drvAsynIPPortConfigure("$(P)", "$(IP):502", 0,0,1)
dbLoadRecords("db/asynRecord.db","P=$(P), R=ASYN, PORT=$(P), ADDR=0,IMAX=0,OMAX=0")

# modbusInterposeConfig(const char *portName, modbusLinkType linkType,
#			int timeoutMsec, int writeDelayMsec)
# linkType 0 = TCP/IP
modbusInterposeConfig("$(P)", 0, 1500, 0)


# Modbus function code: 3 (Read Holding Registers, 16-bit word access)
# Start address: 1
# Access 125 words as inputs
# Default data type: unsigned integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMsec, "plcType")
#
# For multiple SSAs per IOC, need to use a portName that depends on $(P)
drvModbusAsynConfigure("$(P)_inw1", "$(P)", 0, 3, 1, 125, 0, 500, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P), R=ASYN_IN, PORT=$(P)_inw1, ADDR=0,IMAX=0,OMAX=0")
dbLoadRecords("db/statistics.template", "P=$(P), R=ASYN_IN, PORT=$(P)_inw1, SCAN=10 second")

# Modbus function code: 3 (Read Holding Registers, 16-bit word access)
# Start address: 125
# Access 16 words as inputs
# Default data type: unsigned integer
drvModbusAsynConfigure("$(P)_inw2", "$(P)", 0, 3, 125, 16, 0, 5000, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P), R=ASYN_IN, PORT=$(P)_inw2, ADDR=0,IMAX=0,OMAX=0")

# Modbus function code: 3 (Read Holding Registers, 16-bit word access)
# Start address: 171
# Access 20 words as inputs
# Default data type: unsigned integer
drvModbusAsynConfigure("$(P)_inw3", "$(P)", 0, 3, 171, 20, 0, 5000, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P), R=ASYN_IN, PORT=$(P)_inw3, ADDR=0,IMAX=0,OMAX=0")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 1
# Access 7 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("$(P)_outw1", "$(P)", 0, 6, 1, 7, 0, 100, "RK")
dbLoadRecords("db/asynRecord.db","P=$(P), R=ASYN_OUT, PORT=$(P)_outw1, ADDR=0,IMAX=0,OMAX=0")

# Modbus function code: 6 (Write Single Register, 16-bit word access)
# Start address: 128
# Access 5 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("$(P)_outw2", "$(P)", 0, 6, 128, 5, 0, 100, "RK")
dbLoadRecords("db/asynRecord.db","P=$(P), R=ASYN_OUT, PORT=$(P)_outw2, ADDR=0,IMAX=0,OMAX=0")

# Enable ASYN_TRACEIO_HEX on octet server
#asynSetTraceIOMask("$(P)", 0, 4)
# Enable ASYN_TRACE_ERROR and ASYN_TRACEIO_DRIVER on octet server
#asynSetTraceMask("$(P)", 0, 9)

# Enable ASYN_TRACEIO_HEX on modbus server
#asynSetTraceIOMask("$(P)_inw1", 0, 4)
# Enable all debugging on modbus server
#asynSetTraceMask("$(P)_inw1", 0, 255)
# Dump up to 512 bytes in asynTrace
asynSetTraceIOTruncateSize("$(P)_inw1", 0, 512)


