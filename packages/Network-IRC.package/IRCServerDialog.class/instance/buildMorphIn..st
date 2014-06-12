as yet unclassified
buildMorphIn: parentMorph 
	"IRCServerDialog test"
	| buttonHeight addressHeight |
	buttonHeight _ 26.
	addressHeight _ 26.
	self
		addGroupListTo: parentMorph
		fractions: (0 @ 0 corner: 0.4 @ 1)
		offsets: (0 @ 0 corner: 0 @ (buttonHeight + addressHeight) negated);
		
		addServerListTo: parentMorph
		fractions: (0.4 @ 0 corner: 0.8 @ 1)
		offsets: (0 @ 0 corner: 0 @ (buttonHeight + addressHeight) negated);
		
		addPortListTo: parentMorph
		fractions: (0.8 @ 0 corner: 1 @ 1)
		offsets: (0 @ 0 corner: 0 @ (buttonHeight + addressHeight) negated);
		
		addServerAddressTo: parentMorph
		fractions: (0 @ 1 corner: 1 @ 1)
		offsets: (0 @ (buttonHeight + addressHeight) negated corner: 0 @ buttonHeight negated);
		
		addActionButtonsTo: parentMorph
		fractions: (0 @ 1 corner: 1 @ 1)
		offsets: (0 @ buttonHeight negated corner: 0 @ 0)