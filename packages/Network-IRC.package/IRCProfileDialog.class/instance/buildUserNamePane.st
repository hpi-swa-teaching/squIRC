property-username
buildUserNamePane

	^IRCGUIHelper entryFieldRowFor: self 
						tag: 'User Name'  
						backLabel: 'name to log on with...'
						textGetter: #userName 
						textSetter: #userName: 
						color: IRCGUIHelper dialogBackgroundColor
						tagColumnWidth: 100
						tagInset: 7