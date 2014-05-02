panel building
addInputPaneTo: win fractions: fractions offsets: offsets 
	| inputArea |
	inputArea := PluggableInterceptingIRCTextMorph
				on: self
				text: nil
				accept: #acceptChannelString:.
	inputArea acceptOnCR: true.
	inputArea addIntercept: Character tab;
		 addIntercept: Character arrowUp;
		 addIntercept: Character arrowDown;
		 hideScrollBarsIndefinitely.
	win
		addMorph: inputArea
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets).
	^ inputArea