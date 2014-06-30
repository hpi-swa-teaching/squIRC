as yet unclassified
addMorph: aMorph fullFrame: aLayoutFrame
| dummyPane |
"As SystemWindow tries to mess with the poor morph to be added we introduce an intermediate dummyPane to be entirely covered by the original Morph to protect it."

	dummyPane := IRCGUIHelper columnContainer.
	dummyPane addMorph: aMorph 
					fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).	
	super addMorph: dummyPane fullFrame: aLayoutFrame