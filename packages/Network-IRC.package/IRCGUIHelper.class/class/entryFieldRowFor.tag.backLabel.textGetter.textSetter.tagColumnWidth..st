entry field
entryFieldRowFor: target tag: tag backLabel: backLabel textGetter: getterSymbol textSetter: setterSymbol tagColumnWidth: tagWidth
 
	| descMorph textEntry alignPane inset |
	inset := self entryTagInset.
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
				 color: self dialogBackgroundColor;
				 layoutPolicy: ProportionalLayout new.
	alignPane
		addMorph: descMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (inset @ inset corner: tagWidth @ 0));
		
		addMorph: textEntry
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (tagWidth @ 0 corner: 0 @ 0)).
	^ alignPane