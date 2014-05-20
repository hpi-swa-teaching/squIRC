dialog creation
addProfileNamePaneTo: parentMorph fractions: fractions offsets: offsets 
	| pane |
	pane := self buildProfileNamePane.
	parentMorph
		addMorph: pane
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	pane borderWidth: 0