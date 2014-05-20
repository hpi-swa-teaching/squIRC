private
addTabControlMoversToParent: morphParent layout: layout 
	| alignMorph buttons |
	buttons := self moverButtons.
	Preferences alternativeWindowLook 
	ifTrue: [buttons color: Color transparent. 
	buttons 
	submorphsDo: [:m | m borderWidth: 2; 
	borderColor: #raised]].
	alignMorph := AlignmentMorph newRow beSticky; clipSubmorphs: true; layoutInset: 0; cellInset: 0; borderWidth: 0; name: 'movers'; color: Color white.
	alignMorph
		addMorph: buttons
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).
	morphParent addMorph: alignMorph fullFrame: layout