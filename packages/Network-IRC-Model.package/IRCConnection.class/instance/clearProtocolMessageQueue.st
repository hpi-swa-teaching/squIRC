network IO
clearProtocolMessageQueue
	
	self protocolMessageQueue removeAll: (self protocolMessageQueue copy)