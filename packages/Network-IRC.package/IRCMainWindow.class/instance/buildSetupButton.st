actionButtons
buildSetupButton

	^IRCGUIHelper 
			actionButtonOn: self
			label: 'setup'
			action: #openSetupDialogue
			balloonText: 'Open up connection setup dialog'