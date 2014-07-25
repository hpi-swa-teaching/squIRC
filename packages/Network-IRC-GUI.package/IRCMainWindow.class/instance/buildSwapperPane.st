swapper
buildSwapperPane

	self swapper: 
			((TabbedSwappingControl withMover: true)
					defaultPaneName: 'console';
					yourself).
	^self swapper