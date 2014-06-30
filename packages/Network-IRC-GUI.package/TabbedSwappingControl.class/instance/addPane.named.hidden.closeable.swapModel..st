public API
addPane: swapPane named: aString hidden: hidden closeable: closeable swapModel: swapModel 
	self addSwapPane: swapPane.
	swapPane name: aString;
		 setProperty: #closeable toValue: closeable;
		 setProperty: #swapModel toValue: swapModel.
	hidden
		ifTrue: [self hidePaneNamed: aString]
		ifFalse: [self showPaneNamed: aString]