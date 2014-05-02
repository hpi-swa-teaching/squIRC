as yet unclassified
addUserNamePaneTo: parentMorph fractions: fractions offsets: offsets 
	| pane |
	pane := self buildUserNamePane.
	parentMorph
		addMorph: pane
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	pane borderWidth: 0