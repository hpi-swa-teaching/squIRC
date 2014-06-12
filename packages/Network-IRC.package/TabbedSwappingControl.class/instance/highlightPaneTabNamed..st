pane operations
highlightPaneTabNamed: paneName 
	| swapper btn coll pane btns |
	pane := self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	pane = frontMost
		ifTrue: [^ nil].
	swapper := self findPaneNamed: 'swap'.
	swapper isNil
		ifTrue: [^ nil].
	self resetPaneTabColors.
	btns := swapper submorphs
				select: [:m | m isKindOf: PluggableButtonIRCeMorph].
	coll := btns
				select: [:m | m label asString = paneName].
	coll isEmpty
		ifTrue: [^ nil].
	btn := coll first.
	btn offColor: self paneFocusedColor