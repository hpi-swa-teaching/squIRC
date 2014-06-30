layout helper
simpleRowPaneFor: aCellGeneratorList on: aModel
	| pane cell frac margin|
	
	pane := self rowContainer.
	
	cell := 0.
	frac := 1.0 / aCellGeneratorList size.
	margin := self rowInset.
	
	aCellGeneratorList 
		do: [:selector | | childPane offsets |
				offsets := margin @ margin corner: margin @ margin negated.
				childPane := aModel perform: selector.
				pane addMorph: childPane
						fullFrame: (LayoutFrame fractions: (cell * frac @ 0
																corner: (cell + 1) * frac  @ 1)
														offsets: (margin @ margin corner: (margin @ margin negated))).
				cell := cell + 1].
	
	^pane