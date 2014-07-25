private-message handling
protocolMessageSubscribers
	
	^protocolMessageSubscribers 
			ifNil: [protocolMessageSubscribers := OrderedCollection new]