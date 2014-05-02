private
tabControlPaneLayout
	self orientation = #left
		ifTrue: [^ LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (0 @ 0 corner: self swapControlsDimension @ 0)].
	self orientation = #right
		ifTrue: [^ LayoutFrame
				fractions: (1 @ 0 corner: 1 @ 1)
				offsets: (self swapControlsDimension negated @ 0 corner: 0 @ 0)].
	self orientation = #bottom
		ifTrue: [^ LayoutFrame
				fractions: (0 @ 1 corner: 1 @ 1)
				offsets: (0 @ (self swapControlsDimension + 1) negated corner: 0 @ 0)].
	"top"
	^ LayoutFrame
		fractions: (0 @ 0 corner: 1 @ 0)
		offsets: (0 @ 0 corner: self controlMoversDimension negated @ self swapControlsDimension)