as yet unclassified
buttonRow
	| aRow btn |
	aRow := AlignmentMorph newRow beSticky.
	aRow color: Color transparent.
	aRow clipSubmorphs: true.
	aRow layoutInset: 10 @ 1;
		 cellInset: 14.
	self buttonSpecs
		do: [:spec | 
			btn := PluggableButtonMorph
						on: self
						getState: nil
						action: spec second.
			btn color: Color transparent;
				 hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 useRoundedCorners;
				 setNameTo: spec third;
				 label: spec first asString.
			btn onColor: Color veryVeryLightGray offColor: Color transparent.
			aRow addMorphBack: btn.
			btn setBalloonText: spec fourth].
	^ aRow