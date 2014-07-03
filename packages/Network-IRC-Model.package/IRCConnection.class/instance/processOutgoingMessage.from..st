outgoing messages
processOutgoingMessage: aMessage from: anObserver

	self class outgoingMessageHandlers 
				at: aMessage command 
				ifPresent: [ :handler |
					(anObserver respondsTo: handler)
					ifTrue: [anObserver perform: handler with: aMessage]
					ifFalse: [self perform: handler with: aMessage]]
				ifAbsent: [ self sendMessage: aMessage ].
	anObserver textWasSent: aMessage