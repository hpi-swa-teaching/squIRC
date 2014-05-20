UI
informUser: aString during: aBlock 
	self gui isNil ifFalse: [self gui informUser: aString during: aBlock]