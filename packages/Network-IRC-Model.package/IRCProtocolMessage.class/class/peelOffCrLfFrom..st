instance creation
peelOffCrLfFrom: aString 
	| remainder idx |
	remainder := aString.
	idx := remainder indexOf: Character cr.
	idx > 0
		ifTrue: [remainder := remainder copyFrom: 1 to: idx - 1].
	idx := remainder indexOf: Character lf.
	idx > 0
		ifTrue: [remainder := remainder copyFrom: 1 to: idx - 1].
	^ remainder