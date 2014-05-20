as yet unclassified
addServerAddressTo: parentMorph fractions: fractions offsets: offsets 
	| alignMorph labelMorph addressMorph |
	alignMorph _ AlignmentMorph newRow hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 2;
				 layoutPolicy: ProportionalLayout new.
	labelMorph _ TextMorph new.
	labelMorph contents: 'Server Address: ' asText allBold;
		 lock.
	addressMorph _ TextMorph new.
	addressMorph contents: self noServerAddress asText;
		 setNameTo: 'serverAddress'.
	alignMorph
		addMorph: labelMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (6 @ 2 corner: 100 @ 0)).
	alignMorph
		addMorph: addressMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (100 @ 2 corner: 0 @ 0)).
	parentMorph
		addMorph: alignMorph
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	Preferences alternativeWindowLook
		ifTrue: [alignMorph borderWidth: 2]
		ifFalse: [alignMorph borderWidth: 0]