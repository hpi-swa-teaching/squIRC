pane operations
removeTabNamed: paneName 
	| btn |
	btn := (self getSwapperButtonNamed: paneName) 
							ifNil: [^nil] 
							ifNotNil: [:coll | coll at: 1 ifAbsent: [^nil]].
	tabs
		remove: paneName
		ifAbsent: [^ false].
	btn delete.
	^ true