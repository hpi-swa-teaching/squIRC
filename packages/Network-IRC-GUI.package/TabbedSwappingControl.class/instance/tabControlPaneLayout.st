private
tabControlPaneLayout
	
	^ LayoutFrame
		fractions: (0 @ 0 corner: 1 @ 0)
		offsets: (0 @ 0 corner: self controlMoversDimension negated @ self swapControlsDimension)