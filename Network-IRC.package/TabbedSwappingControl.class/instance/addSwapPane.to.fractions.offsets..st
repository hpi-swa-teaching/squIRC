private
addSwapPane: swapPane to: parentMorph fractions: fractions offsets: offsets 
	"private"
	parentMorph
		addMorph: swapPane
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets)