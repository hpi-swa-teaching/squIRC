accessing
nameFilter: aString 
	nameFilter := aString.
	aString isNil ifFalse: [self doName: true]