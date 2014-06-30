as yet unclassified
innerBounds
	| inner |
	inner _ super innerBounds copy.
	headerHeight isNil ifFalse: [
		inner _ inner withTop: (inner top + headerHeight)
		].
	^ inner