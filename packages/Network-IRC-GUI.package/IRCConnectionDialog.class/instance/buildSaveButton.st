profiles-gui
buildSaveButton

	^IRCGUIHelper 	actionButtonOn: self 
						label: 'save current' 
						action: #saveCurrentToProfile 
						balloonText: 'Save your current configuration to a new profile'