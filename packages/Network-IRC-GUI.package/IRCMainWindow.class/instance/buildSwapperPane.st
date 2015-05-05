swapper
buildSwapperPane

	self swapper: 
			((TabbedSwappingControl withMover: true)
					defaultPaneName: 'console';
					name: self knownName, '.Tab';
					yourself).
	^self swapper