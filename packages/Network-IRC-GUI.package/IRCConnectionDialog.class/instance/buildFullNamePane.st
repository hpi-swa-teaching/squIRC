configuration-gui
buildFullNamePane

	^IRCGUIHelper 
			entryFieldRowFor: self connection
			tag: 'full name' 
			backLabel: 'John Squeaker <john@squeaker.com>' 
			textGetter: #fullName 
			textSetter: #fullName: 
			tagColumnWidth: 100