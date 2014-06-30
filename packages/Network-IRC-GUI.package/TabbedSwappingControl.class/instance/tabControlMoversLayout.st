private
tabControlMoversLayout
	
	^ LayoutFrame
		fractions: (1 @ 0 corner: 1 @ 0)
		offsets: (self controlMoversDimension negated @ 0 corner: 0 @ self swapControlsDimension)