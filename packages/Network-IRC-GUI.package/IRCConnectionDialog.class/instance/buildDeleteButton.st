profiles-gui
buildDeleteButton

	^IRCGUIHelper 	actionButtonOn: self 
						label: 'delete' 
						action: #deleteProfile 
						balloonText: 'Delete the selected profile'
						name: 'BtnDelete'