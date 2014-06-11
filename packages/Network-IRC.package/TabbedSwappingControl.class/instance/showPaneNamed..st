pane operations
showPaneNamed: paneName 
	| pane |
	pane := self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	pane = frontMost
		ifTrue: [^ nil].
	frontMost isNil
		ifFalse: [frontMost hide].
	(tabs includes: paneName)
		ifFalse: [self addPaneNameToTabs: paneName].
	self highlightPaneTabNamed: paneName.
	frontMost := pane.
	frontMost show; changed.
	"self owner isNil
		ifFalse: [self owner activate]"