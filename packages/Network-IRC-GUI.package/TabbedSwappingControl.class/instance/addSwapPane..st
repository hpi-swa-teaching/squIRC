private
addSwapPane: swapPane 

	self
		addMorph: swapPane
		fullFrame: (LayoutFrame
							fractions: (0 @ 0 corner: 1 @ 1)
							offsets: self swapPaneOffsets)