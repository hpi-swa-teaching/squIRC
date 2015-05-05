configuration-gui
buildNickPane

	^IRCGUIHelper 
			entryFieldRowFor: self connection
			tag: 'nick' 
			backLabel: 'nick'
			textGetter: #nick 
			textSetter: #nick: 
			tagColumnWidth: 100
			name: 'TxtCnfNick'