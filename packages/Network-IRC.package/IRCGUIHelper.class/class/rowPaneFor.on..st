row panes
rowPaneFor: aCellGeneratorList on: aModel
	| pane cell frac spacing |
	
	pane := self rowContainer.
	
	cell := 0.
	frac := 1.0 / aCellGeneratorList size.
	spacing := self cellSpacing / 2.
	
	aCellGeneratorList 
		do: [:selector | | childPane offsets |
				offsets := ((selector = aCellGeneratorList first) 
									ifTrue: [0] ifFalse: [spacing]) @ 0 
								corner: ((selector = aCellGeneratorList last) 
									ifTrue: [0] ifFalse: [spacing negated]) @ 0.
				childPane := aModel perform: selector.
				pane addMorph: childPane
						fullFrame: (LayoutFrame fractions: (cell * frac @ 0 
																corner: (cell + 1) * frac @ 1)
														offsets: offsets).
				cell := cell + 1].
	
	^pane