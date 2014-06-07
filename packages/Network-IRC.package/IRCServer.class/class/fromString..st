instance creation
fromString: aString 

	^(self new)
		configureFromMIRCLine: aString;
		yourself