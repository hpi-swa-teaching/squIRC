instance creation
fromString: aString 

	^(self new)
		configureFromString: aString;
		yourself