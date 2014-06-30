gui-creation
addServerListTo: parentMorph fractions: fractions offsets: offsets 
	| alignMorph topOffset listMorph labelMorph |
	topOffset _ 12.
	alignMorph _ AlignmentMorph newRow hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 2;
				 layoutPolicy: ProportionalLayout new.
	labelMorph _ TextMorph new.
	labelMorph contents: 'Server' asText allBold.
	listMorph _ PluggableListMorph
				on: self
				list: #serverList
				selected: #selectedServerIndex
				changeSelected: #selectedServerIndex:
				menu: nil.
	alignMorph
		addMorph: labelMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 0)
				offsets: (6 @ -2 corner: 0 @ topOffset)).
	alignMorph
		addMorph: listMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ topOffset corner: 0 @ 0)).
	parentMorph
		addMorph: alignMorph
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	Preferences alternativeWindowLook
		ifTrue: [alignMorph borderWidth: 2]
		ifFalse: [alignMorph borderWidth: 0]