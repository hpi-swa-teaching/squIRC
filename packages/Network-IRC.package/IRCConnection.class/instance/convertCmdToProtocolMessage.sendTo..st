msg process outgoing new
convertCmdToProtocolMessage: aString sendTo: idString 
	| words command rest msg shortenedString |
	"get rid of '/' "
	shortenedString := aString copyFrom: 2 to: aString size. 
	words := shortenedString asString substrings.
	command := words first.
	rest := words size > 1
				ifTrue: [shortenedString copyFrom: command size + 2 to: shortenedString size]
				ifFalse: [''].
	msg := [IRCProtocolMessage
				command: command
				arguments: (Array with: idString with: rest asString)] ifError: [:a :b | nil].
	^ msg