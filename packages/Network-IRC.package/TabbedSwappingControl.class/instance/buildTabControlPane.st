gui creation
buildTabControlPane
	| tabControl insets height width |
	
	tabControl := IRCGUIHelper rowContainer.
	
	insets := IRCGUIHelper rowInset @ IRCGUIHelper rowInset.
	height := IRCGUIHelper rowHeight.
	width := self moverButtonsWidth.
	
	self swapper: IRCGUIHelper flowContainer.
	tabControl addMorph: self swapper 
					fullFrame: (LayoutFrame
										fractions: (0 @ 0 corner: 1 @ 1)
										offsets: (insets corner: insets negated + (width negated @ 0))).
					
	self showMover
		ifTrue: [tabControl 
						addMorph: (self buildMoverButtons) 
						fullFrame:  (LayoutFrame
										fractions: (1 @ 0 corner: 1 @ 1)
										offsets: (insets + (width negated @ 0) corner: insets negated))].
	^tabControl