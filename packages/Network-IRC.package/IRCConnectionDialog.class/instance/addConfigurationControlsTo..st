configuration
addConfigurationControlsTo: aPane 
	| rowHeight offset row rowSpacing rowPosn topOffset str |
	rowHeight := 22.
	rowSpacing := 36.
	offset := 10 @ 14.
	rowPosn := offset copy.
	topOffset := 24.
	rowPosn := rowPosn + (0 @ topOffset).
	aPane color: self configurationPaneBackgroundColor.
	str := StringMorph
				contents: 'These are your current parameter values'
				font: (StrikeFont familyName: 'NewYork' size: 12).
	str emphasis: 1.
	aPane
		addMorph: str
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (10 @ 6 corner: -10 @ 20)).
	self configurationSpecs
		do: [:array | 
			row := self configurationRowFor: array.
			aPane
				addMorph: row
				fullFrame: (LayoutFrame
						fractions: (0 @ 0 corner: 1 @ 0)
						offsets: (rowPosn corner: offset x negated @ (rowPosn y + rowHeight))).
			rowPosn := rowPosn + (0 @ rowSpacing)]