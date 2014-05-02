as yet unclassified
addActionButtonsTo: parentMorph fractions: fractions offsets: offsets 
	| buttons alignMorph btn |
	buttons _ self buttonRow.
	Preferences alternativeWindowLook
		ifTrue: [buttons color: Color transparent.
			buttons
				submorphsDo: [:m | m borderWidth: 2;
						 borderColor: #raised]].
	alignMorph _ AlignmentMorph newRow hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 2;
				 layoutPolicy: ProportionalLayout new.
	alignMorph
		addMorph: buttons
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).
	parentMorph
		addMorph: alignMorph
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	Preferences alternativeWindowLook
		ifTrue: [alignMorph borderWidth: 2]
		ifFalse: [alignMorph borderWidth: 0].
	btn _ self findMorphNamed: 'okayButton' in: buttons.
	btn isNil
		ifFalse: [btn
				offColor: Color veryVeryLightGray;
				setBalloonText: self okayButtonInactiveHelpText]