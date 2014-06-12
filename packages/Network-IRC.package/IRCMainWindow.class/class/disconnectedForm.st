stored graphics
disconnectedForm
	DisconnectedForm isNil
		ifTrue: [self initializeDisconnectedForm].
	^ DisconnectedForm