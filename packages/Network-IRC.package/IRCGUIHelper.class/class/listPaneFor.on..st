list panes
listPaneFor: aLineGeneratorList on: aModel
	| pane row insX insY height spacing|
	
	pane := self columnContainer.
	
	row := 0.
	insX := self listPaneInsets x.
	insY := self listPaneInsets y.
	height := self rowHeight.
	spacing := self rowSpacing.
	
	aLineGeneratorList 
		do: [:selector | | childPane |
				childPane := aModel perform: selector.
				pane addMorph: childPane
						fullFrame: 
							(LayoutFrame 
							 fractions: (0 @ 0 
								corner: 	 1 @ 0)
							 offsets: 	((insX @ (row * spacing + insY)) 
								corner:   (insX negated @ (row * spacing	+ height + insY)))).
				row := row + 1].
	
	^pane