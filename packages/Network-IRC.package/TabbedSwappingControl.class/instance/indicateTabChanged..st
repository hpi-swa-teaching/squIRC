pane operations
indicateTabChanged: paneName 
	"<aString> is name of pane where something changed while we were on  
	another pane."
	| swapper coll btn pane btns |
	pane := self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	pane = frontMost
		ifTrue: [^ nil].
	swapper := self findPaneNamed: 'swap'.
	swapper isNil
		ifTrue: [^ nil].
	btns := swapper submorphs
				select: [:m | m isKindOf: PluggableButtonIRCeMorph].
	coll := btns
				select: [:m | m label asString = paneName].
	coll isEmpty
		ifTrue: [^ nil].
	btn := coll first.
	btn showSelectionFeedback: true.
	btn feedbackColor: self tabFeedbackColor