swapper
buildSwapperPane

	self swapper: 
			((TabbedSwappingControl 
					newSwapControlPaneOrientation: #top 
					showMover: true)
					defaultPaneName: 'console';
					setMoverButtonColors: self moverButtonColor;
					yourself).
	^ self swapper