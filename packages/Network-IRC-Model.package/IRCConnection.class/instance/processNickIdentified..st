msg process incoming
processNickIdentified: aMessage 
	| string |
	string := IRCProtocolMessage extractNickIdentifiedStringFromProtocolMessage: aMessage.
	self
		sendString: string
		withNickTag: self serverPrefixMessageNick
		ifFrontChannelObserverIs: nil