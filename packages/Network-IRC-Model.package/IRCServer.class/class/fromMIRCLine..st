instance creation
fromMIRCLine: aString 

	(self isValidMIRCLine: aString) ifFalse: [^nil].
	
	^(self new)
		configureFromMIRCLine: aString;
		yourself