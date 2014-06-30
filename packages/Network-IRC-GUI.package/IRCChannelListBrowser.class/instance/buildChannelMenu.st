interface
buildChannelMenu
	| channelMenu |
	
	channelMenuList _ channelMenuList asSet asSortedCollection.
	channelMenu _ MenuMorph new defaultTarget: self.
	
	channelMenu addTitle: connection server.
	channelMenuList do: [:channel | 
		channelMenu add: channel selector: #openChannelNamed: argument: channel].
		
	channelMenu addLine.
	channelMenu add: 'Create Channel...' action: #createChannel.
	channelMenu balloonTextForLastItem: 'Enter Channel name. Join the channel and add it to the menu.'.
	channelMenu addTitle: 'Channels'.
	channelMenu  addStayUpItem.
	channelMenu color: Color veryVeryLightGray.
	^channelMenu
	