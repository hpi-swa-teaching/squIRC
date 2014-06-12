private
tabControlMoversLayout
	self orientation = #left
		ifTrue: [^ LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 0)
				offsets: (0 @ 0 corner: self swapControlsDimension @ self controlMoversDimension)].
	self orientation = #right
		ifTrue: [^ LayoutFrame
				fractions: (1 @ 1 corner: 1 @ 1)
				offsets: (self swapControlsDimension negated @ self controlMoversDimension negated corner: 0 @ 0)].
	self orientation = #bottom
		ifTrue: [^ LayoutFrame
				fractions: (1 @ 1 corner: 1 @ 1)
				offsets: (self controlMoversDimension negated @ self swapControlsDimension negated corner: 0 @ 0)].
	"top"
	^ LayoutFrame
		fractions: (1 @ 0 corner: 1 @ 0)
		offsets: (self controlMoversDimension negated @ 0 corner: 0 @ self swapControlsDimension)