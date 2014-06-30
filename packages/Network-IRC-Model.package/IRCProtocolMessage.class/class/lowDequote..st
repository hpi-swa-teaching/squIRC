low level quoting - private
lowDequote: aString 
	"The message has been received. Handle the special case characters and  
	decode them as found."
	| input output char |
	input _ ReadStream on: aString.
	output _ WriteStream on: ''.
	[input atEnd]
		whileFalse: [char _ input next.
			char = self messageQuotingCharacter
				ifTrue: [char _ self lowDequoteNextCharacterFrom: input].
			output nextPut: char].
	^ output contents