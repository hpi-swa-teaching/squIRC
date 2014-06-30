console
buildCombinedConsoleTextAndInputPane
	| consolePane inputPane alignMorph inputHeight |
	inputHeight := self inputHeight.
	alignMorph := AlignmentMorph newColumn hResizing: #spaceFill;
				 vResizing: #spaceFill;
				 layoutInset: 0;
				 borderWidth: 0;
				 layoutPolicy: ProportionalLayout new.
	consolePane := PluggableIRCTextMorph
				on: model
				text: #consoleText
				accept: nil
				readSelection: #consoleTextSelection
				menu: #consoleMenu:.
	consolePane name: 'text'.
	inputPane := PluggableInterceptingIRCTextMorph
				on: model
				text: nil
				accept: #acceptConsoleString:.
	inputPane acceptOnCR: true;
		 color: Color white;
		 addIntercept: Character arrowUp;
		 addIntercept: Character arrowDown;
		 name: 'consoleInput';
		 hideScrollBarsIndefinitely.
	consolePane keysInputPane: inputPane.
	alignMorph color: IRCClientColors consolePaneBackground;
		
		addMorph: consolePane
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ inputHeight negated)).
	alignMorph
		addMorph: inputPane
		fullFrame: (LayoutFrame
				fractions: (0 @ 1 corner: 1 @ 1)
				offsets: (0 @ inputHeight negated corner: 0 @ 0)).
	^ alignMorph