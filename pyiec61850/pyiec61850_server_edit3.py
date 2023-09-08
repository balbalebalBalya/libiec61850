#!/usr/bin/env python3
import time
import threading
import signal
import iec61850

def signal_handler(signal, frame):
    global running
    running = False
    print('You pressed Ctrl+C!')

signal.signal(signal.SIGINT, signal_handler)
tcpPort = 102
running = True

class MyIECServer():
    def __init__(self):
        self.__model = iec61850.IedModel_create("testmodel")
        lDevice1 = iec61850.LogicalDevice_create("SENSORS", self.__model)
        #iec61850.IedModel_addLogicalDevice(self.__model, lDevice1)
        lln1 = iec61850.LogicalNode_create("LLN0", lDevice1)
        #iec61850.LogicalDevice_addLogicalNode(lDevice1, lln0)
        
        # Create Data Objects and Data Attributes for LLN0
        mod = iec61850.DataObject_create("Mod", lln1, "0")
        mod_stVal = iec61850.DataAttribute_create("stVal", mod)
        mod_q = iec61850.DataAttribute_create("q", mod)
        mod_t = iec61850.DataAttribute_create("t", mod)
        mod_ctlModel = iec61850.DataAttribute_create("ctlModel", mod)
        
        beh = iec61850.DataObject_create("Beh", lln1)
        beh_stVal = iec61850.DataAttribute_create("stVal", beh)
        beh_q = iec61850.DataAttribute_create("q", beh)
        beh_t = iec61850.DataAttribute_create("t", beh)
        
        health = iec61850.DataObject_create("Health", lln1)
        health_stVal = iec61850.DataAttribute_create("stVal", health)
        health_q = iec61850.DataAttribute_create("q", health)
        health_t = iec61850.DataAttribute_create("t", health)
        
        namPlt = iec61850.DataObject_create("NamPlt", lln1)
        namPlt_vendor = iec61850.DataAttribute_create("vendor", namPlt)
        namPlt_swRev = iec61850.DataAttribute_create("swRev", namPlt)
        namPlt_d = iec61850.DataAttribute_create("d", namPlt)
        namPlt_configRev = iec61850.DataAttribute_create("configRev", namPlt)
        namPlt_ldNs = iec61850.DataAttribute_create("ldNs", namPlt)

        # Add the created objects and attributes to their respective parents
        iec61850.DataObject_addChild(ln0, mod)
        iec61850.DataObject_addChild(ln0, beh)
        iec61850.DataObject_addChild(ln0, health)
        iec61850.DataObject_addChild(ln0, namPlt)

        # Create a dummy CDC (use the appropriate CDC type based on your requirements)
        iec61850.CDC_ASG_create("DummyCDC", iec61850.toModelNode(ln0), 0, False)

        # Create the IED server
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


if __name__ == "__main__":
    try:
        srv = MyIECServer()
        srvThread = threading.Thread(target=srv.run)
        srvThread.start()
        while running:
            pass
    except KeyboardInterrupt:
        running = False
        srv.stop()
