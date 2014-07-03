private-message handling
processIncomingMessage: aMessage 
	| handler |
	
	self protocolMessageSubscribers
		do: [:subscriber | subscriber ircProtocolMessage: aMessage].
	handler := self class incomingMessageHandlers
				at: aMessage command
				ifAbsent: [].
	handler
		ifNil: [^ self].
	^ self perform: handler with: aMessage