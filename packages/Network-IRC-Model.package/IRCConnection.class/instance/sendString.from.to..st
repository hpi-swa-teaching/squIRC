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
				[line isEmpty ifTrue: [line := ' '].
				result := line first = $/ 
					ifTrue: 
						[msg := self convertCmdToProtocolMessage: line idString: idString.
						msg 
							ifNil: [false]
							ifNotNil: 
								[msg isSpecial 
										ifTrue: 
											[self 
												privmsgFrom: nil
												to: idString
												text: msg specialConvertedForm]
										ifFalse: 
											[self 
												processOutgoingMessage: msg 
												from: observer].].]
					ifFalse: 
						[self 
							privmsgFrom: nil
							to: idString
							text: line].
				result ifTrue: [observer textWasSent: line]]]].
	^result