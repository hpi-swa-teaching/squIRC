msg process incoming
processReplyWhoIsServer: aMessage 
	| string |
	string := IRCProtocolMessage extractWhoIsServerStringFromProtocolMessage: aMessage.
	self
		sendString: string
		withNickTag: self serverPrefixMessageNick
		ifFrontChannelObserverIs: nil