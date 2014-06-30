msg process incoming
processWhoIsChannels: aMessage 
	| string |
	string := IRCProtocolMessage extractWhoIsChannelsStringFromProtocolMessage: aMessage.
	self
		sendString: string
		withNickTag: self serverPrefixMessageNick
		ifFrontChannelObserverIs: nil