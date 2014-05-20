private-message handling
processMessage: aMessage 
	| handler |
	
	protocolMessageSubscribers
		do: [:subscriber | subscriber ircProtocolMessage: aMessage].
	handler _ self class messageHandlers
				at: aMessage command
				ifAbsent: [].
	handler
		ifNil: [^ self].
	^ self perform: handler with: aMessage