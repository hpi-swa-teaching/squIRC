private
textEntryMorphOn: aModel textGetter: getterSymbol textSetter: setterSymbol 
	| entryMorph |
	entryMorph := PluggableIRCTextEntryMorph
				on: aModel
				text: getterSymbol
				accept: setterSymbol.
	entryMorph color: Color white;
		 acceptOnCR: true;
		 hideScrollBarsIndefinitely;
		 borderColor: Color lightGray.
	aModel addDependent: entryMorph.
	^ entryMorph