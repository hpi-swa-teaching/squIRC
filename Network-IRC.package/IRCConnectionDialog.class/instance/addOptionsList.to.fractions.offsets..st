options
addOptionsList: aList to: aPane fractions: frac offsets: off 
	| rowHeight rowSpacing rowPosn button |
	rowHeight := self optionRowHeight.
	rowSpacing := self optionRowSpacing.
	rowPosn := off origin copy.
	aList
		do: [:each | 
			button := self createOptionButtonForOption: each.
			aPane
				addMorph: button
				fullFrame: (LayoutFrame
						fractions: frac
						offsets: (rowPosn corner: off corner copy x @ (rowPosn y + rowHeight))).
			rowPosn := rowPosn + (0 @ rowSpacing)].
	^ aPane