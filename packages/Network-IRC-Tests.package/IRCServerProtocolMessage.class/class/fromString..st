as yet unclassified
fromString: aString 
	| model |
	model _ super fromString: aString.
	model setTimestamp.
	^model