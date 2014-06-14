mover buttons
buildMoverButtons

	^ IRCGUIHelper simpleRowPaneFor: 
							{	#buildLeftButton .
								#buildRightButton .
								#buildCloseButton} 
							on: self
	"| aRow btn |
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
			aRow addMorph: btn fullFrame: (LayoutFrame fractions: (0@0 corner: 1 @0))].
	^ aRow"