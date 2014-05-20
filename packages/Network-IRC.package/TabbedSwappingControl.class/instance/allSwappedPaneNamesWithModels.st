public API
allSwappedPaneNamesWithModels
	| panes pane |
	panes _ OrderedCollection new.
	tabs
		do: [:tabName | 
			pane _ self findPaneNamed: tabName.
			pane isNil
				ifFalse: [(pane hasProperty: #swapModel)
						ifTrue: [panes
								add: (pane valueOfProperty: #swapModel)]]].
	^panes