profiles-gui
buildProfileActionButtons
	| alignMorph btn |
	alignMorph := AlignmentMorph newRow.
	alignMorph beSticky; layoutInset: 5 @ 3; cellInset: 6; clipSubmorphs: true; borderWidth: 0; color: IRCGUIHelper dialogBackgroundColor.
	self profileButtonSpecs
		do: [:spec | 
			btn := PluggableButtonMorph
						on: self
						getState: nil
						action: spec second.
			Preferences alternativeWindowLook
				ifTrue: [btn borderWidth: 2;
						 borderColor: #raised].
			btn label: spec first;
					color: self profileActionButtonColor;
					useRoundedCorners;
					hResizing: #spaceFill;
					vResizing: #spaceFill.
			btn onColor: Color white offColor: self profileActionButtonColor.
			alignMorph addMorphBack: btn.
			btn setBalloonText: spec fourth.
			btn setNameTo: spec third].
	^ alignMorph