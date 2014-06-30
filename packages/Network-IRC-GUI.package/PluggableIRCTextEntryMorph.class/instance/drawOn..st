accessing
drawOn: aCanvas 
	self tagWhenEmpty isNil
		ifFalse: [self text isEmpty
				ifTrue: [self tagWhenEmpty show]
				ifFalse: [self tagWhenEmpty hide]].
	super drawOn: aCanvas