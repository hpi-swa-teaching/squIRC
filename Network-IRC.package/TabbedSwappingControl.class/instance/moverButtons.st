private
moverButtons
	| aRow btn onColor offColor |
	aRow := AlignmentMorph newRow beSticky; borderWidth: 0; borderColor: Color transparent.
	aRow color: Color transparent.
	aRow clipSubmorphs: true.
	aRow layoutInset: 1 @ 2;
		 cellInset: 1.
	self moverButtonSpecs
		do: [:spec | 
			btn := PluggableButtonIRCeMorph
						on: self
						getState: (spec fourth = #none
								ifFalse: [spec fourth])
						action: spec third.
			btn color: Color transparent;
				 hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 useRoundedCorners;
				 name: spec second;
				 label: spec first asString.
			onColor := spec sixth = #none
						ifTrue: [Color transparent]
						ifFalse: [self perform: spec sixth].
			offColor := spec seventh = #none
						ifTrue: [Color transparent]
						ifFalse: [self perform: spec seventh].
			btn onColor: onColor offColor: offColor.
			aRow addMorphBack: btn.
			btn setBalloonText: spec fifth].
	^ aRow