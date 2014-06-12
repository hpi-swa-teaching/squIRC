dialog lifecycle
showParent

	self parentDialog ifNotNil: [self parentDialog showWindow]