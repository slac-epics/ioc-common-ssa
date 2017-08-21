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
modbusInterposeConfig("$(P)", 0, 300, 0)


# Word Access at Modbus address 1
# Modbus function code: 3 (Read Holding Registers)
# Start address: 1
# Access 117 words as inputs
# Default data type: unsigned integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMesec, "plcType")db
drvModbusAsynConfigure("RF1_In_Word", "$(P)", 0, 3, 1, 117, 0, 350, "RK")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_IN,PORT=RF1_In_Word,ADDR=0,IMAX=0,OMAX=0")

# Word Access at Modbus address 1
# Modbus function code: 6 (Write Single Register)
# Start address: 1
# Access 6 words as outputs 
# Default data type: unsigned integer
# Note: why is data type 1 below?
drvModbusAsynConfigure("RF1_Out_Word", "$(P)", 0, 6, 1, 6, 1, 100, "RK")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_OUT,PORT=RF1_Out_Word,ADDR=0,IMAX=0,OMAX=0")

# Enable ASYN_TRACEIO_HEX on sever
asynSetTraceIOMask("$(P)ASYN", 0,4)
asynSetTraceIOMask("$(P)ASYN_IN", 0,4)
asynSetTraceIOMask("$(P)ASYN_OUT", 0,4)

