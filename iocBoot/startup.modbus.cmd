# for modbus
# Macros:
# P - the PV name prefix
# IP - The IP address or host name 

# Use the following commands for TCP/IP
# drvAsynIPPortConfigure(const char *portName, const char *hostInfo,
# 			 unsigned int priority, int noAutoConnect,
#			 int noProcessEos);

drvAsynIPPortConfigure("$(P)", "$(IP):502", 0,0,1)

# modbusInterposeConfig(const char *portName, modbusLinkType linkType,
#			int timeoutMsec, int writeDelayMsec)
modbusInterposeConfig("$(P)", 0, 2000, 0)


# Word Access at Modbus address 1
# Access 16 words as inputs
# Default data type unsigened integer
# drvModbusAsynConfigure("portName", "TcpPortName", slaveaddress,
#			modbusFunctions, modbusStartAddress, modbusLength,
#			dataType, pollMesec, "plcType")db
drvModbusAsynConfigure("RF1_In_Word", "$(P)", 0, 3, 1, 125, 0, 100, "RK")

# Access 5 words as outputs 
# Function code = 6 (single register)
# Default data type unsigned integer
drvModbusAsynConfigure("RF1_Out_Word", "$(P)", 0, 6, 1, 10, 1, 100, "RK")

# Enable ASYN_TRACEIO_HEX on sever
asynSetTraceIOMask("$(P)", 0,4)

 dbLoadRecords("db/ssa.db", "P=$(P)")




