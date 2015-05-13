menu
channelMenu
	
	^[ :item | item
		contents: 'Channels';
		subMenuUpdater: self
		selector: #expandIrcMenu: ]