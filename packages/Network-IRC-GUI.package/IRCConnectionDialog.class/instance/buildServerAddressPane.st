configuration-gui
buildServerAddressPane

	^IRCGUIHelper 
			entryFieldRowFor: self connection
			tag: 'server' 
			backLabel: 'irc.server.com:6667'
			textGetter: #serverAsString 
			textSetter: #serverAsString: 
			tagColumnWidth: 100
			name: 'TxtCnfServer'