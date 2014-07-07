msg process outgoing new
convertCmdToProtocolMessage: aString idString: idString 
	| words command rest msg |
	words := aString asString substrings.
	command := words first.
	rest := words size > 1
				ifTrue: [aString copyFrom: command size + 2 to: aString size]
				ifFalse: [''].
	msg := [IRCProtocolMessage
				command: command
				arguments: (Array with: idString with: rest asString)] ifError: [:a :b | nil].
	^ msg