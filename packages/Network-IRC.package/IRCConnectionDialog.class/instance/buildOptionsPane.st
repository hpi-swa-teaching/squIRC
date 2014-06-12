options
buildOptionsPane
	| aPane indentLevel fullList leftCount leftList rightList |
	indentLevel := 160.
	aPane := AlignmentMorph newColumn hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 color: IRCGUIHelper dialogBackgroundColor;
				 layoutPolicy: ProportionalLayout new.
	self addOptionPaneHeaderTo: aPane offset: indentLevel @ 0.
	fullList := IRCOptionsManagement optionKeys asSortedCollection.
	leftCount := fullList size even
				ifTrue: [fullList size // 2]
				ifFalse: [fullList size // 2 + 1].
	leftList := fullList copyFrom: 1 to: leftCount.
	rightList := fullList copyFrom: leftCount + 1 to: fullList size.
	self
		addOptionsList: leftList
		to: aPane
		fractions: (0 @ 0 corner: 0.5 @ 0)
		offsets: (10 @ 32 corner: 10 negated @ 0).
	self
		addOptionsList: rightList
		to: aPane
		fractions: (0.5 @ 0 corner: 1 @ 0)
		offsets: (10 @ 32 corner: 10 negated @ 0).
	^ aPane