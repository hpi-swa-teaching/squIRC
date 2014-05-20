connect indicator
addConnectedIndicator
	| indicator |
	indicator := SketchMorph withForm: self scaledDisconnectedForm.
	indicator name: 'indicator'.
	self
		addMorph: indicator
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 0)
				offsets: (0 @ 0 corner: self indicatorExtent))