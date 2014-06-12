as yet unclassified
fromString: aString 
	"Member cannot be both @ and + (operator and voiced) since operators  
	already have voice." 

	self initialize.
	self flag: #noteToFrank. "Removed t from +@ string, need to come back here." 
	('+@' includes: aString first)
		ifTrue: [aString first = $@
				ifTrue: [self operator: true].
			aString first = $+
				ifTrue: [self voice: true].
			aString first = $t ifTrue: [self topic: true].
			self
				nick: (aString copyFrom: 2 to: aString size)]
		ifFalse: [self nick: aString]