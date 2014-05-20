private
swapPaneOffsets
	self orientation = #left ifTrue: [^ self swapControlsDimension @ 0 corner: 0 @ 0].
	self orientation = #right ifTrue: [^ 0 @ 0 corner: self swapControlsDimension negated @ 0].
	self orientation = #bottom ifTrue: [^ 0 @ 0 corner: 0 @ self swapControlsDimension negated].
	^ 0 @ self swapControlsDimension corner: 0 @ 0
