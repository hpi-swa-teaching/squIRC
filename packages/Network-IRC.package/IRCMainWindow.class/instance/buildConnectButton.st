actionButtons
buildConnectButton

	^IRCGUIHelper 
			actionButtonOn: self
			label: 'connect'
			action: #connectToggle
			balloonText: 'Connect/Disconnect IRC server'