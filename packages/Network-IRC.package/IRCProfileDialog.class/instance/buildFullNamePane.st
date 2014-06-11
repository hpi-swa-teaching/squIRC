property-fullname
buildFullNamePane

	^ IRCGUIHelper entryFieldRowFor: self 
						tag: 'Full Name'  
						backLabel: 'your name...' 
						textGetter: #fullName 
						textSetter: #fullName: 
						color: IRCGUIHelper dialogBackgroundColor
						tagColumnWidth: 100
						tagInset: 7