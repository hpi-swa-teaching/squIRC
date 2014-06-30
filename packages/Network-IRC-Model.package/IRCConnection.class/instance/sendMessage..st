network IO
sendMessage: aMessage 
	
	self protocolMessageQueue addLast: aMessage.
	^true
