instance creation
fromMIRCLine: aString 

	(self isValidMIRCLine: aString) ifTrue: [^nil].
	
	^(self new)
		configureFromMIRCLine: aString;
		yourself