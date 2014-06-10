dialog creation
buildEditProfileDialogOn: window 
	| alignMorph "listMorph frac off offset rowHeight rowPosition rowSpacing" pane pane2 |
	alignMorph := AlignmentMorph newColumn hResizing: #spaceFill;
			vResizing: #spaceFill;
			layoutInset: 0;
			borderWidth: 0;
			layoutPolicy: ProportionalLayout new.
	"listMorph := PluggableListMorph new.
	rowHeight := 22.
	rowSpacing := 36.
	offset := 10 @ 14.
	rowPosition := offset copy.
	frac := 0 @ 0 corner: 1 @ 0.
	off := rowPosition corner: offset x negated @ (rowPosition y + rowHeight).
	self addFullNamePaneTo: listMorph fractions: frac offsets: off.
	rowPosition := rowPosition + ( 0 @ rowSpacing ).
	off := rowPosition corner: offset x negated @ (rowPosition y + rowHeight).
	self addUserNamePaneTo: listMorph fractions: frac offsets: off.
	alignMorph addMorph: listMorph."
	pane := IRCGUIHelper entryFieldRowFor: self tag: 'Full Name' backLabel: 'Max Mustermann' textGetter: #fullName textSetter: #fullName: color: IRCGUIHelper dialogBackgroundColor tagColumnWidth: 50 tagPad: 15 tagInset: 5.
	pane2 := IRCGUIHelper entryFieldRowFor: self tag: 'Nick' backLabel: 'awesomenick' textGetter: #nick textSetter: #nick: color:  Color red tagColumnWidth: 50 tagPad: 15 tagInset: 5.
	alignMorph addMorph: pane.
	alignMorph addMorph: pane2.
	window addMorph: alignMorph frame: ( 0 @ 0 extent: 1 @ 1).
	alignMorph color: IRCGUIHelper dialogBackgroundColor
	"
	self entryMorphs removeAll: self entryMorphs copy.
	
	coll := OrderedCollection new.
	coll add: #addProfileNamePaneTo:fractions:offsets:;
		 add: #addNickPaneTo:fractions:offsets:;
		 add: #addFullNamePaneTo:fractions:offsets:;
		 add: #addUserNamePaneTo:fractions:offsets:;
		 add: #addServerAddressPaneTo:fractions:offsets:;
		 add: #addActionButtonsTo:fractions:offsets:.
	rowHeight := 22.
	rowSpacing := 36.
	offset := 10 @ 14.
	rowPosn := offset copy.
	frac := 0 @ 0 corner: 1 @ 0.
	coll
		do: [:selector | 
			off := rowPosn corner: offset x negated @ (rowPosn y + rowHeight).
			self
				perform: selector
				with: window
				with: frac
				with: off.
			rowPosn := rowPosn + (0 @ rowSpacing)].
	window color: self dialogBackgroundColor."
