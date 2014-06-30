network IO
protocolMessageQueue
	
	^protocolMessageQueue
				ifNil: [protocolMessageQueue := OrderedCollection new]