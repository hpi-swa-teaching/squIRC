as yet unclassified
filterNames: aString 
	| model |
	model := self new.
	model nameFilter: aString.
	^ model