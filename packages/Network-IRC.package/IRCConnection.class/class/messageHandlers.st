message handlers
messageHandlers
	MessageHandlers isNil ifTrue: [self initializeMessageHandlers].
	^MessageHandlers