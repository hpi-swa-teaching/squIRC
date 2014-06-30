pane operations
hidePaneNamed: paneName 
	| pane |
	pane _ self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	pane = frontMost
		ifTrue: [^ nil].
	(tabs includes: paneName)
		ifFalse: [self addPaneNameToTabs: paneName].
	pane hide