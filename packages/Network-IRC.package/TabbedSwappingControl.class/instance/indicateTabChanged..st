pane operations
indicateTabChanged: paneName 
	"<aString> is name of pane where something changed while we were on  
	another pane."
	| btn pane |
	pane := self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	pane = frontMost
		ifTrue: [^ nil].
	btn := (self getSwapperButtonNamed: paneName) 
							ifNil: [^nil] 
							ifNotNil: [:coll | coll at: 1 ifAbsent: [^nil]].
	btn showSelectionFeedback: true.
	btn feedbackColor: self tabFeedbackColor