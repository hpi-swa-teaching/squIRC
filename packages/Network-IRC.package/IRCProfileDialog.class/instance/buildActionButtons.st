local action buttons
buildActionButtons
	| buttons alignMorph |
	buttons _ self buttonRow.
	Preferences alternativeWindowLook
		ifTrue: [buttons
				submorphsDo: [:m | m borderWidth: 2;
						 borderColor: #raised]].
	alignMorph _ AlignmentMorph newRow hResizing: #spaceFill;
				 vResizing: #shrinkWrap;
				 layoutInset: 0;
				 borderWidth: 0;
				 layoutPolicy: ProportionalLayout new.
	alignMorph
		addMorph: buttons
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).
	^ alignMorph