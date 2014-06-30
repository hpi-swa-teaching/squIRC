low level quoting - private
lowQuote: char on: stream 
	char = self nulCharacter
		ifTrue: [^ stream nextPut: self messageQuotingCharacter;
				 nextPut: $0].
	char = self nlCharacter
		ifTrue: [^ stream nextPut: self messageQuotingCharacter;
				 nextPut: $n].
	char = self crCharacter
		ifTrue: [^ stream nextPut: self messageQuotingCharacter;
				 nextPut: $r].
	char = self messageQuotingCharacter
		ifTrue: [^ stream nextPut: self messageQuotingCharacter;
				 nextPut: self messageQuotingCharacter]