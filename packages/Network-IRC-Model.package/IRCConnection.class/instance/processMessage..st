private-message handling
processMessage: aMessage 
	| handler |
	
	self protocolMessageSubscribers
		do: [:subscriber | subscriber ircProtocolMessage: aMessage].
	handler := self class messageHandlers
				at: aMessage command
				ifAbsent: [].
	handler
		ifNil: [^ self].
	^ self perform: handler with: aMessage