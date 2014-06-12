buttons
buttonRow
	| aRow btn onColor offColor |
	aRow := AlignmentMorph newRow beSticky.
	aRow color: Color transparent.
	aRow clipSubmorphs: true.
	aRow layoutInset: 5 @ 1;
		 cellInset: 6.
	btns := Dictionary new.
	self buttonSpecs
		do: [:spec | 
			btn := PluggableButtonMorph
						on: self
						getState: ((spec at: 'status')
									= #none
								ifFalse: [spec at: 'status'])
						action: (spec at: 'selector').
			btn color: Color transparent;
				 hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 useRoundedCorners;
				 label: (spec at: 'label') asString.
			onColor := (spec at: 'on')
							= #none
						ifTrue: [Color transparent]
						ifFalse: [self
								perform: (spec at: 'on')].
			offColor := (spec at: 'off')
							= #none
						ifTrue: [Color transparent]
						ifFalse: [self
								perform: (spec at: 'off')].
			btn onColor: onColor offColor: offColor.
			aRow addMorphBack: btn.
			btn
				setBalloonText: (spec at: 'help').
			btns
				at: (spec at: 'name')
				put: btn].
	^ aRow