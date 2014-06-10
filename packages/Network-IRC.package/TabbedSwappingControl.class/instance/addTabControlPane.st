private
addTabControlPane
	| alignMorph |
	alignMorph := AlignmentMorph newRow.
	alignMorph beSticky; clipSubmorphs: true; layoutInset: self tabLayoutInset; cellInset: 2; borderWidth: 0; borderColor: Color transparent; name: 'swap'.
	alignMorph color: Color transparent.
	self addMorph: alignMorph fullFrame: self tabControlPaneLayout.
	Preferences alternativeWindowLook
		ifTrue: [alignMorph borderWidth: 2]
		ifFalse: [alignMorph borderWidth: 0].
	self showMover
		ifTrue: [self addTabControlMoversToParent: self layout: self tabControlMoversLayout]