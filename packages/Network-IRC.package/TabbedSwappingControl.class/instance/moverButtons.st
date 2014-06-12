private
moverButtons
	| aRow btn onColor offColor |
	aRow := AlignmentMorph newRow beSticky; borderWidth: 0; borderColor: Color transparent.
	aRow color: IRCGUIHelper dialogBackgroundColor.
	aRow clipSubmorphs: true.
	aRow layoutInset: 1 @ 2;
		 cellInset: 1.
	self moverButtonSpecs
		do: [:spec | 
			btn := IRCGUIHelper 
					actionButtonOn: self
					label: spec first asString 
					action: spec third
					balloonText: spec fifth.
			btn name: spec second.
			onColor := spec sixth = #none
						ifTrue: [Color transparent]
						ifFalse: [self perform: spec sixth].
			offColor := spec seventh = #none
						ifTrue: [Color transparent]
						ifFalse: [self perform: spec seventh].
			btn onColor: onColor offColor: offColor.
			aRow addMorph: btn fullFrame: (LayoutFrame fractions: (0@0 corner: 1 @0))].
	^ aRow