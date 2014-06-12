gui-creation
buildGUIIn: parentMorph
	
	self
		addGroupListTo: parentMorph
		fractions: (0 @ 0 corner: 0.4 @ 1)
		offsets: (0 @ 0 corner: 0 @ (IRCGUIHelper basicHeight * 2) negated);
		
		addServerListTo: parentMorph
		fractions: (0.4 @ 0 corner: 0.8 @ 1)
		offsets: (0 @ 0 corner: 0 @ (IRCGUIHelper basicHeight * 2) negated);
		
		addPortListTo: parentMorph
		fractions: (0.8 @ 0 corner: 1 @ 1)
		offsets: (0 @ 0 corner: 0 @ (IRCGUIHelper basicHeight * 2) negated);
		
		addServerAddressTo: parentMorph
		fractions: (0 @ 1 corner: 1 @ 1)
		offsets: (0 @ (IRCGUIHelper basicHeight * 2) negated corner: 0 @ IRCGUIHelper basicHeight negated);
		
		addActionButtonsTo: parentMorph
		fractions: (0 @ 1 corner: 1 @ 1)
		offsets: (0 @ IRCGUIHelper basicHeight negated corner: 0 @ 0)