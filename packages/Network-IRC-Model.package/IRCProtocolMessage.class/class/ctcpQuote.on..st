ctcp quoting - private
ctcpQuote: char on: stream 
	char = self extendedDelimeterCharacter
		ifTrue: [^ stream nextPut: self ctcpQuotingCharacter;
				 nextPut: $a].
	char = self ctcpQuotingCharacter
		ifTrue: [^ stream nextPut: self ctcpQuotingCharacter;
				 nextPut: self ctcpQuotingCharacter]