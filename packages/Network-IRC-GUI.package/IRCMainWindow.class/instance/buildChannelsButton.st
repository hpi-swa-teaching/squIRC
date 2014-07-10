actionButtons
buildChannelsButton

	^IRCGUIHelper 
			actionButtonOn: self
			label: 'channels'
			action: #openChannelList
			balloonText: 'Open Channels List Window'
			name: self knownName, '.BtnChannels'