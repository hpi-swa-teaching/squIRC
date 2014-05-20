buttons
addActionButtonsWithFractions: fractions offsets: offsets 
	| alignMorph buttons indicator |
	buttons := self buttonRow.
	Preferences alternativeWindowLook
		ifTrue: [buttons color: Color transparent.
			buttons
				submorphsDo: [:m | m borderWidth: 2;
						 borderColor: #raised]].
	alignMorph := AlignmentMorph newRow hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 2;
				 layoutPolicy: ProportionalLayout new.
	indicator := SketchMorph withForm: self scaledDisconnectedForm.
	indicator name: 'indicator'.
	alignMorph
		addMorph: indicator
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 0)
				offsets: (0 @ 0 corner: self indicatorExtent)).
	alignMorph
		addMorph: buttons
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (self indicatorWidth @ 0 corner: 0 @ 0)).
	self
		addMorph: alignMorph
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	Preferences alternativeWindowLook
		ifTrue: [alignMorph borderWidth: 2]
		ifFalse: [alignMorph borderWidth: 0]