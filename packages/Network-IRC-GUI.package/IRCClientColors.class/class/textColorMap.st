mIRC colors
textColorMap
	TextColorMap == nil ifTrue: [self initializeTextColorMap].
	^ TextColorMap