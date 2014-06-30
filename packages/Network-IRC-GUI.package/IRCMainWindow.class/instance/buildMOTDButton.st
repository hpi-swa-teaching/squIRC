actionButtons
buildMOTDButton

	^IRCGUIHelper 
			actionButtonOn: self
			label: 'motd'
			action: #openMotd
			balloonText: 'Read Message Of The Day'