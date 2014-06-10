local action buttons
buttonRow
	| aRow btn |
	aRow := AlignmentMorph newRow beSticky.
	aRow color: IRCGUIHelper dialogBackgroundColor.
	aRow layoutInset: 30 @ 1;
		 cellInset: 34.
	self buttonSpecs
		do: [:spec | 
			btn := PluggableButtonMorph
						on: self
						getState: nil
						action: spec second.
			btn color: Color white;
				 hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 useRoundedCorners;
				 setNameTo: spec third;
				 label: spec first asString.
			btn onColor: Color veryVeryLightGray offColor: Color white.
			aRow addMorphBack: btn.
			btn setBalloonText: spec fourth].
	^ aRow