msg process outgoing new
sendString: aString from: observer to: idString 
	"New message logic."

	| result msg |
	result := true.
	aString ifNotEmpty:  
		[aString asString linesDo: 
			[:line | 
			result ifTrue: 
				"Needed to handle blank lines from, e.g., cut 'n' paste. "
				[line ifEmpty: [line := ' '].
				result := line first = $/ 
					ifTrue: 
						[msg := self convertCmdToProtocolMessage: line sendTo: idString]
					ifFalse: 
						[msg:= self convertPrivToProtocolMessage: line sendTo: idString].
				msg 
					ifNil: [false]
					ifNotNil: 
						[self processOutgoingMessage: msg from: observer]]]].
	^result