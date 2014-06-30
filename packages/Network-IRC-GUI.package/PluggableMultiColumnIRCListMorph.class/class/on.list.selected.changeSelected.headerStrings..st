as yet unclassified
on: anObject list: getListSel selected: getSelectionSel changeSelected: setSelectionSel headerStrings: headers 
	| listMorph |
	listMorph := self new.
	listMorph headerStrings: headers.
	listMorph
		on: anObject
		list: getListSel
		selected: getSelectionSel
		changeSelected: setSelectionSel
		menu: nil
		keystroke: #arrowKey:from:.
	^ listMorph