ctcp quoting - private
ctcpDequote: aString 
	| input output char |
	input _ ReadStream on: aString.
	output _ WriteStream on: ''.
	[input atEnd]
		whileFalse: [char _ input next.
			char = self ctcpQuotingCharacter
				ifTrue: [char _ self ctcpDequoteNextCharacterFrom: input].
			output nextPut: char].
	^ output contents