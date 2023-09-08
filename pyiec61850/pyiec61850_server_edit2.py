#!/usr/bin/python
import sys
import time
import threading
import traceback
import signal
import sys
import logging
from datetime import datetime
import socket
from time import sleep
# Import the iec61850 module correctly
sys.path.append('.')
sys.path.append('./eventHandlers')
import iec61850


class myIECServer():

    def __init__(self):
        #IedServer.__init__(self)
        self.__model = iec61850.IedModel_create("testmodel")
        #self.register()

        #lDevice = self.model.getLogicalDevice("mydevice")
        lDevice = iec61850.LogicalDevice_create("SENSORS", self.__model)
        lln0 = iec61850.LogicalNode_create("LLN0",lDevice)

        beh = DataObject("Beh")
        beh.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        beh.addBasicTypeAttribute("stVal", BasicTypeEnum.BOOLEAN, "false")
        beh.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        lln0.addDataObject(beh)

        health = DataObject("Health")
        health.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        health.addBasicTypeAttribute("stVal", BasicTypeEnum.BOOLEAN, "false")
        health.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        lln0.addDataObject(health)

        spcso1 = DataObject("SPCSO1")
        spcso1.addBasicTypeAttribute("ctlModel", BasicTypeEnum.CS, "SBO-with-enhanced-security")
        spcso1.addBasicTypeAttribute("ctlVal", BasicTypeEnum.CS, "")
        spcso1.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        spcso1.addBasicTypeAttribute("stVal", BasicTypeEnum.BOOLEAN, "false")
        spcso1.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        lln0.addDataObject(spcso1)

        spcso2 = DataObject("SPCSO2")
        spcso2.addBasicTypeAttribute("ctlModel", BasicTypeEnum.CS, "SBO-with-enhanced-security")
        spcso2.addBasicTypeAttribute("ctlVal", BasicTypeEnum.CS, "")
        spcso2.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        spcso2.addBasicTypeAttribute("stVal", BasicTypeEnum.BOOLEAN, "false")
        spcso2.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        lln0.addDataObject(spcso2)

        spcso3 = DataObject("SPCSO3")
        spcso3.addBasicTypeAttribute("ctlModel", BasicTypeEnum.CS, "SBO-with-enhanced-security")
        spcso3.addBasicTypeAttribute("ctlVal", BasicTypeEnum.CS, "")
        spcso3.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        spcso3.addBasicTypeAttribute("stVal", BasicTypeEnum.BOOLEAN, "false")
        spcso3.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        lln0.addDataObject(spcso3)

        spcso4 = DataObject("SPCSO4")
        spcso4.addBasicTypeAttribute("ctlModel", BasicTypeEnum.CS, "SBO-with-enhanced-security")
        spcso4.addBasicTypeAttribute("ctlVal", BasicTypeEnum.CS, "")
        spcso4.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        spcso4.addBasicTypeAttribute("stVal", BasicTypeEnum.BOOLEAN, "false")
        spcso4.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        lln0.addDataObject(spcso4)

        analogvalues = DataObject("AnalogValues")
        lln0.addDataObject(analogvalues)

        param1 = DataObject("Param1")
        param1.addBasicTypeAttribute("mag.f", BasicTypeEnum.FLOAT32, "0.0")
        param1.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        param1.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        analogvalues.addDataObject(param1)

        param2 = DataObject("Param2")
        param2.addBasicTypeAttribute("mag.f", BasicTypeEnum.FLOAT32, "0.0")
        param2.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        param2.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        analogvalues.addDataObject(param2)

        param3 = DataObject("Param3")
        param3.addBasicTypeAttribute("mag.f", BasicTypeEnum.FLOAT32, "0.0")
        param3.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        param3.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        analogvalues.addDataObject(param3)

        param4 = DataObject("Param4")
        param4.addBasicTypeAttribute("mag.f", BasicTypeEnum.FLOAT32, "0.0")
        param4.addBasicTypeAttribute("q", BasicTypeEnum.BOOLEAN, "false")
        param4.addBasicTypeAttribute("t", BasicTypeEnum.TIMESTAMP, "")
        analogvalues.addDataObject(param4)

    def signal_handler(self, sig, frame):
        self.server.stop()
        sys.exit(0)

if __name__ == '__main__':
    server = myIECServer()
