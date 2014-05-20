private
addSwapPane: swapPane 
	"private"
	self
		addSwapPane: swapPane
		to: self
		fractions: (0 @ 0 corner: 1 @ 1)
		offsets: self swapPaneOffsets