as yet unclassified
calculateColumnWidthsFrom: arrayOfMorphs 
	| maxWidths hMorph widest padRight |
	maxWidths := Array new: arrayOfMorphs size - 1.
	padRight := 8.
	listMorph isNil ifFalse: [listMorph listChanged].
	1
		to: maxWidths size
		do: [:idx | 
			hMorph := headerStrings at: idx.
			hMorph fitContents.
			widest := hMorph width + 10.
			listMorph isNil
				ifFalse: [listMorph columnWidths isNil
						ifFalse: [widest := widest
										max: (listMorph columnWidths at: idx)]].
			maxWidths at: idx put: widest + padRight].
	^ maxWidths