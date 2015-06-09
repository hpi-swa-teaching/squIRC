dialog creation
addPane: pane toSwapper: swapper paneName: aString default: default 
	swapper
		addPane: pane
		named: aString
		hidden: default not
		closeable: true
		swapModel: self.
	default
		ifTrue: [swapper defaultPaneName: aString]