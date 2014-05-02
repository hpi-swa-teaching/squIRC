entry field
entryFieldRowFor: target tag: tag backLabel: backLabel textGetter: getterSymbol textSetter: setterSymbol color: aColor tagColumnWidth: tagWidth tagPad: tagPad tagInset: tagInset 
	| descMorph textEntry alignPane |
	descMorph := self textTagField: tag.
	textEntry := self
				textEntryMorphOn: target
				textGetter: getterSymbol
				textSetter: setterSymbol.
	self addBackLabel: backLabel toEntryField: textEntry.
	alignPane := AlignmentMorph newRow hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 color: aColor;
				 layoutPolicy: ProportionalLayout new.
	alignPane
		addMorph: descMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (tagPad @ (2 + tagInset) corner: tagPad + tagWidth @ 0));
		
		addMorph: textEntry
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (tagWidth + tagPad @ tagInset corner: 0 @ tagInset negated)).
	^ alignPane