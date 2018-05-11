# Modbus config for BBEF SSA
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
modbusInterposeConfig("$(P)", 0, 300, 0)

# NOTE: We use hex numbers for the start address (leading 0x)
#       to be consistent with the manual.  This is optional, decimal
#       numbers (no leading zero) or octal numbers (leading zero) 
#       can also be used.

# Word Access at Modbus address 1
# Modbus function code: 4 (Read Input Registers)
# Start address: 0x0000
# Access 90 words as analog inputs
# Default data type: unsigned integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMesec, "plcType")db
drvModbusAsynConfigure("RF1_In_Word", "$(P)", 0, 4, 0x0000, 90, 0, 1000, "BBEF")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_IN,PORT=RF1_In_Word,ADDR=0,IMAX=0,OMAX=0")

# Word Access at Modbus address 1
# Modbus function code: 4 (Read Input Registers)
# Start address: 0x0060
# Access 65 words as analog inputs
# Default data type: unsigned integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMesec, "plcType")db
drvModbusAsynConfigure("RF2_In_Word", "$(P)", 0, 4, 0x0060, 65, 0, 1000, "BBEF")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_IN,PORT=RF2_In_Word,ADDR=0,IMAX=0,OMAX=0")

# Word Access at Modbus address 1
# Modbus function code: 4 (Read Input Registers)
# Start address: 0x0100
# Access 116 words as digital inputs
# Default data type: unsigned integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMesec, "plcType")db
drvModbusAsynConfigure("RF3_In_Word", "$(P)", 0, 4, 0x0100, 116, 0, 1000, "BBEF")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_IN,PORT=RF3_In_Word,ADDR=0,IMAX=0,OMAX=0")

# Word Access at Modbus address 1
# Modbus function code: 6 (Write Single Register)
# Start address: 0x0200
# Access 26 words as outputs 
# Default data type: unsigned integer
drvModbusAsynConfigure("RF1_Out_Word", "$(P)", 0, 6, 0x0200, 26, 0, 0, "BBEF")
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


