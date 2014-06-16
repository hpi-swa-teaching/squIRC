configuration-gui
buildUserNamePane

	^IRCGUIHelper 
			entryFieldRowFor: self connection
			tag: 'username' 
			backLabel: 'username'
			textGetter: #userName 
			textSetter: #userName: 
			tagColumnWidth: 100