private
textEntryMorphOn: target textGetter: getterSymbol textSetter: setterSymbol 
	| entryMorph |
	entryMorph := PluggableIRCTextEntryMorph
				on: target
				text: getterSymbol
				accept: setterSymbol.
	entryMorph color: Color white;
		 acceptOnCR: true;
		 hideScrollBarsIndefinitely;
		 borderColor: Color lightGray.
	^ entryMorph