actionButtons
buildConnectButton

	^IRCGUIHelper 
			toggleButtonOn: self 
			label: 'connect' 
			state: #connected 
			action: #connectToggle 
			offColor: Color red 
			onColor: Color green 
			balloonText: 'Connect/Disconnect IRC server'