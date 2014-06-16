pane operations
showPaneNamed: paneName 
	| pane |
	pane := self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	pane = self frontMost
		ifTrue: [^ nil].
	self frontMost isNil
		ifFalse: [frontMost hide].
	(self tabs includes: paneName)
		ifFalse: [self addPaneNameToTabs: paneName].
	self highlightPaneTabNamed: paneName.
	self frontMost: pane.
	self frontMost show; changed