msg process incoming
processReplyWhoIsUser: aMessage 
	| string |
	string := IRCProtocolMessage extractWhoIsUserStringFromProtocolMessage: aMessage.
	self
		sendString: string
		withNickTag: self serverPrefixMessageNick
		ifFrontChannelObserverIs: nil