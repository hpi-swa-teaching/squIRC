pane operations
removeSwapPane: swapPane 
	| paneName pane swapModel okayToClose |
	paneName _ swapPane externalName.
	pane _ self findPaneNamed: paneName.
	pane isNil
		ifTrue: [^ nil].
	(tabs includes: paneName)
		ifTrue: [(swapPane hasProperty: #swapModel)
				ifTrue: [swapModel _ swapPane valueOfProperty: #swapModel.
						okayToClose _ (swapModel respondsTo: #aboutToBeClosed)
							ifTrue: [swapModel perform: #aboutToBeClosed]
							ifFalse: [true].
						okayToClose
						ifTrue: [(self removeTabNamed: paneName)
								ifTrue: [swapPane delete.
									self showDefaultPane]]]]