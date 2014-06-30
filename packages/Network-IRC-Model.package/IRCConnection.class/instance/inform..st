UI
inform: aString 
	self gui isNil
		ifFalse: [self gui inform: aString]