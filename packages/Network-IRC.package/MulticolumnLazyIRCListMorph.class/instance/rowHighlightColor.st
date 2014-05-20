as yet unclassified
rowHighlightColor
	listSource model isNil
		ifFalse: [^ listSource model rowHighlightColor].
	^ super rowHighlightColor