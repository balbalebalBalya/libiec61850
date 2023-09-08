#!/usr/bin/python
import sys
import time
import threading
import traceback
import signal
import sys
sys.path.append('.')
import iec61850

def signal_handler(signal, frame):
    global running
    running = 0
    print('You pressed Ctrl+C!')

signal.signal(signal.SIGINT, signal_handler)
tcpPort = 102
running = 1

class myIECServer():
    def __init__(self):
        self.__model = iec61850.IedModel_create("PythonModel")
        lDevice1 = iec61850.LogicalDevice_create("SENSORS", self.__model);
        lln0 = iec61850.LogicalNode_create("LLN0", lDevice1);
        ggio1 = iec61850.LogicalNode_create("GGIO1", lDevice1);
        lphd1 = iec61850.LogicalNode_create("LPHD1", lDevice1);
        ttmp1 = iec61850.LogicalNode_create("TTMP1", lDevice1);
        iec61850.CDC_SPC_create("mod",  iec61850.toModelNode(lln0), 0, False)
        iec61850.CDC_LPL_create("NamPlt",  iec61850.toModelNode(lln0), 0)
        iec61850.CDC_LPL_create("NamPlt",  iec61850.toModelNode(ggio1), 0)
        iec61850.CDC_INS_create("Health",  iec61850.toModelNode(lln0), 0)
        iec61850.CDC_ENS_create("Beh",  iec61850.toModelNode(lln0), 0)
        iec61850.CDC_MV_create("AnIn1", iec61850.toModelNode(ggio1), 0, False)
        iec61850.CDC_MV_create("AnIn2", iec61850.toModelNode(ggio1), 0, False)
        iec61850.CDC_MV_create("AnIn3", iec61850.toModelNode(ggio1), 0, False)
        iec61850.CDC_MV_create("AnIn4", iec61850.toModelNode(ggio1), 0, False)
        iec61850.CDC_INS_create("Health",  iec61850.toModelNode(ggio1), 0)
        iec61850.CDC_ENS_create("Beh",  iec61850.toModelNode(ggio1), 0)
        iec61850.CDC_SPS_create("Ind1",  iec61850.toModelNode(ggio1), 0)
        iec61850.CDC_SPS_create("Ind2",  iec61850.toModelNode(ggio1), 0)
        iec61850.CDC_SPS_create("Ind3",  iec61850.toModelNode(ggio1), 0)
        iec61850.CDC_SPS_create("Ind4",  iec61850.toModelNode(ggio1), 0)
        iec61850.CDC_SAV_create("TmpSv",  iec61850.toModelNode(ttmp1), 0, False)
        iec61850.CDC_ASG_create("TmpSp",  iec61850.toModelNode(ttmp1), 0, False)
        iec61850.CDC_SPC_create("SPCSO1",  iec61850.toModelNode(ggio1),0, True)
        iec61850.CDC_SPC_create("SPCSO2",  iec61850.toModelNode(ggio1),0, True)
        iec61850.CDC_SPC_create("SPCSO3",  iec61850.toModelNode(ggio1),0, True)
        iec61850.CDC_SPC_create("mod",  iec61850.toModelNode(ggio1), 0, False)
        iec61850.CDC_DPL_create("PhyNam",  iec61850.toModelNode(lphd1), 0)
        iec61850.CDC_INS_create("PhyHealth",  iec61850.toModelNode(lphd1), 0)
        iec61850.CDC_INS_create("Proxy",  iec61850.toModelNode(lphd1), 0)
        #iec61850.DataSetEntry_create()
        self.__iedServer = iec61850.IedServer_create(self.__model)
        iec61850.IedServer_start(self.__iedServer, tcpPort)
        if not iec61850.IedServer_isRunning(self.__iedServer):
            print("Starting server failed! Exit.\n")
            iec61850.IedServer_destroy(self.__iedServer)
            sys.exit(-1)

    def run(self):
        global running
        while running:
            time.sleep(0.1)
        self.stop()

    def stop(self):
        iec61850.IedServer_stop(self.__iedServer)
        iec61850.IedServer_destroy(self.__iedServer)
        iec61850.IedModel_destroy(self.__model)

try:
    srv = myIECServer()
    srvThread = threading.Thread(target=srv.run)
    srvThread.start()
    running = 1
except:
    running = 0
    print("Error:")
    traceback.print_exc(file=sys.stdout)
    sys.exit(-1)
