options
addOptionPaneHeaderTo: aPane offset: aPoint 
	| str |
	str := StringMorph
				contents: 'Options are for all console windows'
				font: (StrikeFont familyName: 'NewYork' size: 12).
	str emphasis: 1.
	aPane
		addMorph: str
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (aPoint corner: 0 @ 14))