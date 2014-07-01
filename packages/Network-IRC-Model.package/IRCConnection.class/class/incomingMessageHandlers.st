message handlers
incomingMessageHandlers
	IncomingMessageHandlers 
		ifNil: [self initializeIncomingMessageHandlers].
	^IncomingMessageHandlers