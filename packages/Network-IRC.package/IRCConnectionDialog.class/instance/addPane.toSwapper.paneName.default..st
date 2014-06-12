as yet unclassified
addPane: pane toSwapper: swapper paneName: aString default: default 
	swapper
		addPane: pane
		named: aString
		hidden: default not
		closeable: false
		swapModel: self.
	default
		ifTrue: [swapper defaultPaneName: aString]