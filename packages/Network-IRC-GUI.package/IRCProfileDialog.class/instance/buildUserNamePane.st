property-username
buildUserNamePane

	^IRCGUIHelper entryFieldRowFor: self 
						tag: 'User Name'  
						backLabel: 'name to log on with...'
						textGetter: #userName 
						textSetter: #userName:
						tagColumnWidth: 100
						name: 'TxtUser'