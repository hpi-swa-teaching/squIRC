as yet unclassified
addFullNamePaneTo: parentMorph fractions: fractions offsets: offsets 
	| pane |
	pane := self buildFullNamePane.
	parentMorph
		addMorph: pane
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	pane borderWidth: 0