# Modbus config for R&K CA1300 SSA
# Macros:
# P - the PV name prefix
# IP - The IP address or host name 

# Use the following commands for TCP/IP
# drvAsynIPPortConfigure(const char *portName, const char *hostInfo,
# 			 unsigned int priority, int noAutoConnect,
#			 int noProcessEos);

drvAsynIPPortConfigure("$(P)", "$(IP):502", 0,0,1)
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN,PORT=$(P),ADDR=0,IMAX=0,OMAX=0")

# modbusInterposeConfig(const char *portName, modbusLinkType linkType,
#			int timeoutMsec, int writeDelayMsec)
# linkType 0 = TCP/IP
modbusInterposeConfig("$(P)", 0, 400, 0)


# Word Access at Modbus address 1
# Modbus function code: 3 (Read Holding Registers)
# Start address: 1
# Access 117 words as inputs
# Default data type: unsigned integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMsec, "plcType")
drvModbusAsynConfigure("RF1_In_Word", "$(P)", 0, 3, 1, 117, 0, 500, "RK")
dbLoadRecords("db/asynRecord.db", "P=$(P),R=ASYN_IN,PORT=RF1_In_Word,ADDR=0,IMAX=0,OMAX=0")
dbLoadRecords("db/statistics.template", "P=$(P),R=ASYN_IN,PORT=RF1_In_Word,SCAN=10 second")

# Word Access at Modbus address 1
# Modbus function code: 6 (Write Single Register)
# Start address: 1
# Access 6 words as outputs 
# Default data type: unsigned integer
# Note: why is data type 1 below?
drvModbusAsynConfigure("RF1_Out_Word", "$(P)", 0, 6, 1, 6, 1, 100, "RK")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_OUT,PORT=RF1_Out_Word,ADDR=0,IMAX=0,OMAX=0")

# Enable ASYN_TRACEIO_HEX on octet server
#asynSetTraceIOMask("$(P)", 0, 4)
# Enable ASYN_TRACE_ERROR and ASYN_TRACEIO_DRIVER on octet server
#asynSetTraceMask("$(P)", 0, 9)

# Enable ASYN_TRACEIO_HEX on modbus server
#asynSetTraceIOMask("RF1_In_Word", 0, 4)
# Enable all debugging on modbus server
#asynSetTraceMask("RF1_In_Word", 0, 255)
# Dump up to 512 bytes in asynTrace
asynSetTraceIOTruncateSize("RF1_In_Word", 0, 512)


