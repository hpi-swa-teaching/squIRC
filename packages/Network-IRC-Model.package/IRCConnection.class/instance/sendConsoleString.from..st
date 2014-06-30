msg process outgoing new
sendConsoleString: aString from: observer 
	"New message logic."

	| result msg |
	result := true.
	aString isEmpty 
		ifFalse: 
			[msg := [IRCProtocolMessage fromString: aString asString] 
						ifError: [:a :b | nil].
			result := msg isNil 
						ifTrue: 
							[self addToConsole: 'ERROR: Could not decode command: "' , aString , '"' 
										, String cr.
							false]
						ifFalse: 
							[msg isLocal 
								ifTrue: [self sendLocalMessage: msg from: observer]
								ifFalse: 
									[self checkLastActionsFor: msg.
									self sendMessage: msg]].
			result ifTrue: [observer textWasSent: aString]].
	^result