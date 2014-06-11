property-serveraddress
buildServerAddressPane
	| alignPane entryPane button buttonWidth |
	buttonWidth := 90.
	entryPane := IRCGUIHelper entryFieldRowFor: self 
						tag: 'Server Address'  
						backLabel: 'server to connect to...' 
						textGetter: #serverAddressString 
						textSetter: #serverAddressString: 
						color: IRCGUIHelper dialogBackgroundColor
						tagColumnWidth: 100
						tagInset: 7.
	button := IRCGUIHelper 
					actionButtonOn: self
	 				label: 'Choose Server' 
					action: #serverButton 
					balloonText: 'Opens up a server list dialog.'.
	alignPane := IRCGUIHelper rowContainer.
	alignPane addMorph: entryPane
					fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: buttonWidth negated @ 0)).
	alignPane addMorph: button
		fullFrame: (LayoutFrame
				fractions: (1 @ 0 corner: 1 @ 1)
				offsets: (buttonWidth negated @ 0 corner: 0 @ 0)).
	^ alignPane