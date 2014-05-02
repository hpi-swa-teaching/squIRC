as yet unclassified
addMessage: aString 
	self playBack add: aString.
	self playBack size > self class rollbackLimit ifTrue: [self playBack removeFirst]