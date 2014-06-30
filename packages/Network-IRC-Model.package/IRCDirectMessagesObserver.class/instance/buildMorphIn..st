pane building
buildMorphIn: parentMorph 
	| textArea inputHeight inputArea |
	textArea := PluggableIRCTextMorph
				on: self
				text: #chatText
				accept: nil
				readSelection: #chatTextSelection
				menu: #channelTextMenu:.
	inputHeight := talkingTo isNil
				ifTrue: [0]
				ifFalse: [26].
	parentMorph
		addMorph: textArea
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ inputHeight negated)).
	talkingTo isNil
		ifFalse: [inputArea := PluggableInterceptingIRCTextMorph
						on: self
						text: nil
						accept: #acceptPrivateString:.
			inputArea acceptOnCR: true;
				 addIntercept: Character arrowUp;
				 addIntercept: Character arrowDown;
				 hideScrollBarsIndefinitely.
			parentMorph
				addMorph: inputArea
				fullFrame: (LayoutFrame
						fractions: (0 @ 1 corner: 1 @ 1)
						offsets: (0 @ inputHeight negated corner: 0 @ 0)).
			textArea keysInputPane: inputArea]