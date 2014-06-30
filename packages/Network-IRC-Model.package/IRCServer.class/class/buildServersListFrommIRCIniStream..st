servers
buildServersListFrommIRCIniStream: aStream 
	| line candidate |
	
	[line := aStream nextLine withBlanksTrimmed.
	aStream atEnd]
		whileFalse: [candidate := self fromMIRCLine: line.
			candidate isNil
				ifFalse: [self addServer: candidate]]