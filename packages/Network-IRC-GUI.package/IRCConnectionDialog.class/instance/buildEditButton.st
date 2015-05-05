profiles-gui
buildEditButton

	^IRCGUIHelper 	actionButtonOn: self 
						label: 'edit' 
						action: #editProfile 
						balloonText: 'Edit the selected profile'
						name: 'BtnEdit'