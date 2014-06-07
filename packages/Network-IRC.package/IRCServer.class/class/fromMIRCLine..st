instance creation
fromMIRCLine: aString 

	^(self new)
		configureFromMIRCLine: aString;
		yourself