actionButtons
buildConnectButton
| button |
	
	button := IRCGUIHelper 
				toggleButtonOn: self 
				label: #connectButtonLabel
				state: #connected 
				action: #connectToggle 
				offColor: Color red 
				onColor: Color green 
				balloonText: 'Connect/Disconnect IRC server'.
	self addDependent: button.
	^button