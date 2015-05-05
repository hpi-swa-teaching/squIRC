profiles-gui
buildNewButton

	^IRCGUIHelper 	actionButtonOn: self 
						label: 'new' 
						action: #addProfile 
						balloonText: 'Add a new profile'
						name: 'BtnNew'