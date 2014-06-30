msg process incoming
processReplyAway: aMessage 
	| string |
	string := IRCProtocolMessage extractReplyAwayStringFromProtocolMessage: aMessage.
	self
		sendString: string
		withNickTag: self serverPrefixMessageNick
		ifFrontChannelObserverIs: nil