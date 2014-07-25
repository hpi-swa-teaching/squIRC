msg process outgoing new
sendConsoleString: aString
	"New message logic."

	| msg |
	aString ifNotEmpty: 
			[msg := [IRCProtocolMessage fromString: aString asString] 
						ifError: [:a :b | 
							self addToConsole: 
								'ERROR: Could not decode command: "' , aString , '"', String cr.
							^false].
			self processOutgoingMessage: msg from: self].
	^true