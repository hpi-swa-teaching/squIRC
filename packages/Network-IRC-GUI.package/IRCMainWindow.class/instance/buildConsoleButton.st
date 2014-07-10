actionButtons
buildConsoleButton

	^IRCGUIHelper 
			actionButtonOn: self
			label: 'new console'
			action: #newConsole
			balloonText: 'Open a new IRC console using same options'
			name: 'BtnConsole'