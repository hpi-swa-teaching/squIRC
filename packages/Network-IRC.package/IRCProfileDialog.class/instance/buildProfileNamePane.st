property-profilename
buildProfileNamePane

	^IRCGUIHelper entryFieldRowFor: self 
						tag: 'Profile Name'  
						backLabel: 'this profiles name...' 
						textGetter: #profileName 
						textSetter: #profileName: 
						color: IRCGUIHelper dialogBackgroundColor
						tagColumnWidth: 100
						tagInset: 7