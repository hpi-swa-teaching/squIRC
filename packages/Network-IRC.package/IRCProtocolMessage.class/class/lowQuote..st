low level quoting - private
lowQuote: aString 
	"The message is about to be sent. Handle the special case characters and  
	encode them as found."
	| stream exclude |
	exclude _ self charactersForLowQuoting.
	stream _ WriteStream on: ''.
	aString
		do: [:char | (exclude includes: char)
				ifTrue: [self lowQuote: char on: stream]
				ifFalse: [stream nextPut: char]].
	^ stream contents