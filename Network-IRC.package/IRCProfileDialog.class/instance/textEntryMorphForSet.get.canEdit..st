common entry
textEntryMorphForSet: setSymbol get: getSymbol canEdit: boolean 
	| textEntry classToUse colorToUse |
	classToUse := boolean
				ifTrue: [PluggableTextMorph]
				ifFalse: [PluggableIRCTextMorph].
	colorToUse := boolean
				ifTrue: [Color white]
				ifFalse: [Color transparent].
	textEntry := classToUse
				on: self
				text: getSymbol
				accept: setSymbol.
	textEntry color: colorToUse;
		 acceptOnCR: true;
		 hideScrollBarsIndefinitely.
	^ textEntry