dialog creation
addNickPaneTo: parentMorph fractions: fractions offsets: offsets 
	| pane |
	pane := self buildNickPane.
	parentMorph
		addMorph: pane
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	pane borderWidth: 0