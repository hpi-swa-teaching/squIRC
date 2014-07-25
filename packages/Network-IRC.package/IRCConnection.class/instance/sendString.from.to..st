msg process outgoing new
sendString: aString from: observer to: idString 
	"New message logic."

	| result msg |
	result := true.
	aString isEmpty 
		ifFalse: 
			[aString asString linesDo: 
					[:line | 
					result 
						ifTrue: 
							[line isEmpty ifTrue: [line := ' '].
							"Needed to handle blank lines from, e.g., cut 'n' 
							paste. "
							result := line first = $/ 
										ifTrue: 
											[msg := self convertCmdToProtocolMessage: line idString: idString.
											msg isNil 
												ifTrue: [false]
												ifFalse: 
													[msg isLocal 
														ifTrue: [self sendLocalMessage: msg from: observer]
														ifFalse: 
															[msg isSpecial 
																ifTrue: 
																	[self 
																		privmsgFrom: nil
																		to: idString
																		text: msg specialConvertedForm]
																ifFalse: 
																	[self checkLastActionsFor: msg.
																	self sendMessage: msg]]]]
										ifFalse: 
											[self 
												privmsgFrom: nil
												to: idString
												text: line].
							result ifTrue: [observer textWasSent: line]]]].
	^result