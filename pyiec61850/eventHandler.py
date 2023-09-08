class EventHandler:
    def __init__(self):
        pass

    def setReceivedData(self, i_data_p):
        pass

    def trigger(self):
        pass


class EventSubscriber:
    def __init__(self):
        self._event_handler_p = None
        self.m_subscriber_id = ""

    def subscribe(self):
        pass

    def deleteEventHandler(self):
        pass

    def setEventHandler(self, i_event_handler_p):
        pass

    def getEventHandler(self):
        pass

    def setSubscriberId(self, i_id):
        pass


# Initialize the subscriber map
EventSubscriber.m_subscriber_map = {}
