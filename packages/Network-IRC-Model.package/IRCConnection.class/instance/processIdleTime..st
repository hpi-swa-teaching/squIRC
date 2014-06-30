msg process incoming
processIdleTime: aMessage 
	| string |
	string := IRCProtocolMessage extractIdleTimeStringFromProtocolMessage: aMessage.
	self
		sendString: string
		withNickTag: self serverPrefixMessageNick
		ifFrontChannelObserverIs: nil