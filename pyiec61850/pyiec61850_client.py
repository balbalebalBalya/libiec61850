#!/usr/bin/python
import sys
import time
import traceback
import iec61850

def testClient():
    con = iec61850.IedConnection_create()
    error = iec61850.IedConnection_connect(con, "localhost", tcpPort)
    if error == iec61850.IED_ERROR_OK:
        # Accessing SAV values
        theVal = "testmodelSENSORS/TTMP1.TmpSv.instMag.f"
        theValType = iec61850.IEC61850_FC_MX
        temperatureValue = iec61850.IedConnection_readFloatValue(con, theVal, theValType)
        assert(temperatureValue[1] == 0)
        newValue = temperatureValue[0] + 10
        err = iec61850.IedConnection_writeFloatValue(con, theVal, theValType, newValue)
        assert(err == 21)
        # Accessing ASG values
        theVal = "testmodelSENSORS/TTMP1.TmpSp.setMag.f"
        theValType = iec61850.IEC61850_FC_SP
        temperatureSetpoint = iec61850.IedConnection_readFloatValue(con, theVal, theValType)
        print(temperatureSetpoint)
        assert(temperatureValue[1] == 0)
        newValue = temperatureValue[0] + 10
        err = iec61850.IedConnection_writeFloatValue(con, theVal, theValType, newValue)
        assert(err == 0)
        temperatureSetpoint = iec61850.IedConnection_readFloatValue(con, theVal, theValType)
        print(temperatureSetpoint)
        assert(temperatureSetpoint[0] == newValue)
        iec61850.IedConnection_close(con)
    else:
        print("Connection error")
        sys.exit(-1)
    iec61850.IedConnection_destroy(con)
    print("client ok")

tcpPort = 102

try:
    testClient()
except:
    print("Error:")
    traceback.print_exc(file=sys.stdout)
    sys.exit(-1)
