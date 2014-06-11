action buttons
buildCancelButton

	^IRCGUIHelper 
			actionButtonOn: self 
			label: 'Cancel' 
			action: #cancelSelected 
			balloonText: 'Discard the entered values.'