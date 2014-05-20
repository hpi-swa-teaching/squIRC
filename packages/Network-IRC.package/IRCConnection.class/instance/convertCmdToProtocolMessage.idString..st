msg process outgoing new
convertCmdToProtocolMessage: aString idString: idString 
	| words command rest msg |
	words _ aString asString substrings.
	command _ words first.
	rest _ words size > 1
				ifTrue: [aString copyFrom: command size + 2 to: aString size]
				ifFalse: [''].
	msg _ [IRCProtocolMessage
				command: command
				arguments: (Array with: idString with: rest asString)] ifError: [:a :b | nil].
	^ msg