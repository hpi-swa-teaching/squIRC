ctcp quoting - private
ctcpQuote: aString 
	| stream exclude |
	exclude _ self charactersForCtcpQuoting.
	stream _ WriteStream on: ''.
	aString
		do: [:char | (exclude includes: char)
				ifTrue: [self ctcpQuote: char on: stream]
				ifFalse: [stream nextPut: char]].
	^ stream contents