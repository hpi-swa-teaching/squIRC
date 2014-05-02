servers
buildServersListFrommIRCIniStream: aStream 
	| line candidate |
	[line := aStream nextLine withBlanksTrimmed.
	aStream atEnd]
		whileFalse: [candidate := self from: line.
			candidate isNil
				ifFalse: [self addServer: candidate]]