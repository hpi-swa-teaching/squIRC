gui creation
initialize

	super initialize.
	self 
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0;
		borderWidth: 0;
		color: IRCGUIHelper dialogBackgroundColor;
		layoutPolicy: ProportionalLayout new.
	self addMorph: self buildTabControlPane 
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0)
											offsets: (0 @ 0 corner: 0 @ IRCGUIHelper rowHeight))