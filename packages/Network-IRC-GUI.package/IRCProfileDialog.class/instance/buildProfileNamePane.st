property-profilename
buildProfileNamePane

	^IRCGUIHelper entryFieldRowFor: self 
						tag: 'Profile Name'  
						backLabel: 'this profiles name...' 
						textGetter: #profileName 
						textSetter: #profileName:
						tagColumnWidth: 100
						name: 'TxtProfile'