actionButtons
buildSetupButton

	^IRCGUIHelper 
			actionButtonOn: self
			label: 'setup'
			action: #openSetupDialog
			balloonText: 'Open up connection setup dialog'
			name: self knownName, '.BtnSetup'