as yet unclassified
add: aTextOrString 
	super add: aTextOrString.
	[self size > self limit]
		whileTrue: [self removeFirst].
	self updateTextFromLines