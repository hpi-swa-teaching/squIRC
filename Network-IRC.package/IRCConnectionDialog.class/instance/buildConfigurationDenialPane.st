configuration
buildConfigurationDenialPane
	| deniedMorph |
	denialPane _ AlignmentMorph newColumn hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 layoutPolicy: ProportionalLayout new.
	denialPane color: Color transparent.
	deniedMorph _ self denialTrueTypeMorph.
	denialPane
		addMorph: deniedMorph
		fullFrame: (LayoutFrame
				fractions: (0.1 @ 0.1 corner: 0.9 @ 0.9)
				offsets: (0 @ 0 corner: 0 @ 0))