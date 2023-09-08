import signal
import math
from iec61850 import *
running = False
iedServer = None

def sigint_handler(signalId):
    global running
    running = False

def controlHandlerForBinaryOutput(action, parameter, value, test):
    if test:
        return ControlHandlerResult.FAILED
    if value.getType() == MmsType.BOOLEAN:
        print("received binary control command: ", end="")
        if value.getBoolean():
            print("on")
        else:
            print("off")
    else:
        return ControlHandlerResult.FAILED
    timeStamp = Hal_getTimeInMs()
    if parameter == IEDMODEL_GenericIO_GGIO1_SPCSO1:
        IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO1_t, timeStamp)
        IedServer_updateAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO1_stVal, value)
    if parameter == IEDMODEL_GenericIO_GGIO1_SPCSO2:
        IedServer_updateUTCTimeAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO2_t, timeStamp)
        IedServer_updateAttributeValue(iedServer, IEDMODEL_GenericIO_GGIO1_SPCSO2_stVal, value)
