profiles-gui
buildSelectButton

	^IRCGUIHelper 	actionButtonOn: self 
						label: 'select' 
						action: #selectProfile 
						balloonText: 'Load the selected profile into your current configuration'
						name: 'BtnSelect'