private
tabLayoutInset
	self orientation = #left
		ifTrue: [^ 1 @ 2].
	self orientation = #right
		ifTrue: [^ -1 @ 2].
	self orientation = #bottom
		ifTrue: [^ 2 @ -8].
	"top"
	^ 2 @ 1