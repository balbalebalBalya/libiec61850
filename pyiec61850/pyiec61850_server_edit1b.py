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

# Set SO_REUSEADDR option to reuse the address
def set_socket_options(server_socket):
    #logging.info(f"test")
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

def signal_handler(signal, frame):
    global running
    running = 0
    print('\nYou pressed Ctrl+C! \nServer Terminated...')

signal.signal(signal.SIGINT, signal_handler)
tcpPort = 102
running = 1

# Import the iec61850 module correctly
sys.path.append('.')
sys.path.append('./eventHandlers')
import iec61850

class myIECServer():
    def __init__(self):
        self.__model = iec61850.IedModel_create("testmodel")
        lDevice1 = iec61850.LogicalDevice_create("SENSORS", self.__model);
        lln0 = iec61850.LogicalNode_create("LLN0", lDevice1);
        ttmp1 = iec61850.LogicalNode_create("TTMP1", lDevice1);
        iec61850.CDC_SAV_create("TmpSv",  iec61850.toModelNode(ttmp1), 0, False)
        iec61850.CDC_ASG_create("TmpSp",  iec61850.toModelNode(ttmp1), 0, False)
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
        logging.info("Server is being stopped...")
        iec61850.IedServer_stop(self.__iedServer)
        iec61850.IedServer_destroy(self.__iedServer)
        iec61850.IedModel_destroy(self.__model)

try:
    srv = myIECServer()
    srvThread = threading.Thread(target=srv.run)
    srvThread.start()
    running = 1
    logging.basicConfig(filename='server.log', level=logging.INFO,
                        format='%(asctime)s - %(levelname)s - %(message)s')
    logging.info(f"Server is running on Port: {tcpPort}")
    print(f"Server is running on Port: {tcpPort}")

    # Accept client connections and log their IP address
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    while running:
        try:
            server_socket.bind(('0.0.0.0', tcpPort))
            break  # If successful, break out of the loop
        except OSError as e:
            if e.errno == 98:
                # Address already in use, wait and try again
                time.sleep(1)
            else:
                raise

    server_socket.listen(1)
    print(f"test")
    while running:
        client_socket, client_address = server_socket.accept()
        

except:
    running = 0
    print("Error:")
    traceback.print_exc(file=sys.stdout)
    sys.exit(-1)
