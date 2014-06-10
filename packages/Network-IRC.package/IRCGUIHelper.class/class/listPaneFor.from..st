list layout
listPaneFor: aLineGeneratorList from: aModel
	| pane rowPosition |
	
	pane := (AlignmentMorph newColumn) 
					hResizing: #spaceFill;
				 	vResizing: #spaceFill;
				 	layoutInset: 0;
				 	borderWidth: 0;
				 	layoutPolicy: ProportionalLayout new;
					yourself.
	
	rowPosition := self insets.
	
	aLineGeneratorList 
		do: [:selector | | childPane offset |
				offset := 10 @ 14.
				childPane := aModel perform: selector.
				pane addMorph: childPane
						fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0)
														offsets: (rowPosition corner: offset x negated @ 
																					(rowPosition y + self rowHeight))).
				rowPosition := rowPosition + (0 @ self rowSpacing)].
	
	^pane