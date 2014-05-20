as yet unclassified
getNewBoolean
	^ getArgument isNil
		ifTrue: [target perform: getSelector]
		ifFalse: [target perform: getSelector with: getArgument]
