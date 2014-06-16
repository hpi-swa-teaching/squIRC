pane operations
highlightPaneTabNamed: paneName 
	| btn pane |
	pane := self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	pane = frontMost
		ifTrue: [^ nil].
	self resetPaneTabColors.
	
	btn := (self getSwapperButtonNamed: paneName) 
							ifNil: [^nil] 
							ifNotNil: [:coll | coll at: 1 ifAbsent: [^nil]].
	btn offColor: self paneFocusedColor