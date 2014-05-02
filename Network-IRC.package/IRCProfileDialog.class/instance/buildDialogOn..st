as yet unclassified
buildDialogOn: window 
	| coll rowHeight rowSpacing offset rowPosn frac off |
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
	window color: self dialogBackgroundColor.
