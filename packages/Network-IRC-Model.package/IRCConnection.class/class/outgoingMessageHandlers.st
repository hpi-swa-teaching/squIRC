message handlers
outgoingMessageHandlers
	OutgoingMessageHandlers isNil
		ifTrue: [self initializeOutgoingMessageHandlers].
	^ OutgoingMessageHandlers