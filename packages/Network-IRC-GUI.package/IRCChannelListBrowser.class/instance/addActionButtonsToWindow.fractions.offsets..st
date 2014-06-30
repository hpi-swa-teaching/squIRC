interface
addActionButtonsToWindow: win fractions: fractions offsets: offsets 
	| btnRow |
	btnRow := self buttonRow.
	self addActionButtonsToButtonRow: btnRow.
	self addNameFilterControlTo: btnRow.
	self addTopicFilterControlTo: btnRow.
	win
		addMorph: btnRow
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets)