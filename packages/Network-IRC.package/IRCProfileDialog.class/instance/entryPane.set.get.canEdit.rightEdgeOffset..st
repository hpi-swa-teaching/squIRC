common entry
entryPane: aString set: setSymbol get: getSymbol canEdit: boolean rightEdgeOffset: offset 
	| tagMorph entryMorph buttonColumnWidth alignPane |
	buttonColumnWidth := 90.
	tagMorph := self entryTagMorph: aString.
	entryMorph := self
				textEntryMorphForSet: setSymbol
				get: getSymbol
				canEdit: boolean.
	entryMorph borderColor: Color transparent.
	self entryMorphs add: entryMorph.
	buttonColumnWidth := 90.
	alignPane := AlignmentMorph newRow hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 color: self dialogBackgroundColor;
				 layoutPolicy: ProportionalLayout new.
	alignPane
		addMorph: tagMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (0 @ 0 corner: buttonColumnWidth @ 0));
		
		addMorph: entryMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (buttonColumnWidth + 4 @ 0 corner: offset negated @ 0)).
	^ alignPane