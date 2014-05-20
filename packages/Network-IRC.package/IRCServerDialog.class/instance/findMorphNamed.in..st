as yet unclassified
findMorphNamed: aString in: parentMorph 
	parentMorph isNil
		ifTrue: [^ nil].
	^  parentMorph
		submorphNamed: aString
		ifNone: []