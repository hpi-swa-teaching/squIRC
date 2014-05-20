stored graphics
connectedForm
	ConnectedForm isNil ifTrue: [self initializeConnectedForm].
	^ ConnectedForm