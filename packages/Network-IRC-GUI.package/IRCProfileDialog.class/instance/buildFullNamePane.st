property-fullname
buildFullNamePane

	^IRCGUIHelper entryFieldRowFor: self 
						tag: 'Full Name'  
						backLabel: 'your name...' 
						textGetter: #fullName 
						textSetter: #fullName: 
						tagColumnWidth: 100
						name: 'TxtName'