# Modbus config for R&K CA186 SSA (for LCLS2 gun)
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
modbusInterposeConfig("$(P)", 0, 300, 0)


# Word Access at Modbus address 1
# Access 16 words as inputs
# Default data type unsigened integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMesec, "plcType")db
drvModbusAsynConfigure("RF1_In_Word", "$(P)", 0, 3, 1, 117, 0, 350, "RK")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_IN,PORT=RF1_In_Word,ADDR=0,IMAX=0,OMAX=0")

# Access 5 words as outputs 
# Function code = 6 (single register)
# Default data type unsigned integer
drvModbusAsynConfigure("RF1_Out_Word", "$(P)", 0, 6, 1, 6, 1, 100, "RK")
dbLoadRecords("db/asynRecord.db","P=$(P),R=ASYN_OUT,PORT=RF1_Out_Word,ADDR=0,IMAX=0,OMAX=0")

# Enable ASYN_TRACEIO_HEX on sever
asynSetTraceIOMask("$(P)ASYN", 0,4)
asynSetTraceIOMask("$(P)ASYN_IN", 0,4)
asynSetTraceIOMask("$(P)ASYN_OUT", 0,4)

