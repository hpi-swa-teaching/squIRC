pane operations
moveTabRight
	| paneName btn |
	frontMost isNil
		ifTrue: [^ nil].
	paneName := frontMost externalName.
	btn := (self getSwapperButtonNamed: paneName) 
							ifNil: [^nil] 
							ifNotNil: [:coll | coll at: 1 ifAbsent: [^nil]].
	self swapper incrementIndexPositionOfSubmorph: btn