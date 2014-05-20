private
pvtHidePaneNamed: paneName 
	| pane |
	pane _ self findPaneNamed: paneName.
	(tabs includes: paneName)
		ifFalse: [self addPaneNameToTabs: paneName].
	pane hide