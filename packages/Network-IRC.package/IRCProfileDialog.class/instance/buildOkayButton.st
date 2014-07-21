action buttons
buildOkayButton

	^IRCGUIHelper 
			actionButtonOn: self 
			label: 'Okay' 
			action: #okaySelected 
			balloonText: 'Accept these values for a new profile.'
			name: 'BtnOkay'