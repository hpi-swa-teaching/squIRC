message handlers
localMessageHandlers
	LocalMessageHandlers isNil ifTrue: [self initializeLocalMessageHandlers].
	^LocalMessageHandlers