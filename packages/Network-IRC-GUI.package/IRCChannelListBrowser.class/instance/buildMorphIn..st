interface
buildMorphIn: parentMorph 
	| buttonHeight horizMargin vertMargin |
	buttonHeight := 28.
	horizMargin := 12.
	vertMargin := 5.
	self
		addActionButtonsToWindow: parentMorph
		fractions: (0 @ 0 corner: 1 @ 0)
		offsets: (horizMargin @ vertMargin corner: horizMargin negated @ (vertMargin + buttonHeight)).
	self
		addChannelListTo: parentMorph
		fractions: (0 @ 0 corner: 1 @ 1)
		offsets: (horizMargin @ (vertMargin + buttonHeight + vertMargin) corner: horizMargin negated @ vertMargin negated)