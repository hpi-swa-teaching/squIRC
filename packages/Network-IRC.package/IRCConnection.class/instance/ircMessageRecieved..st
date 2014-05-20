naval mode
ircMessageRecieved: aMessage 
	| sender newLine |
	sender _ aMessage sender
				ifNil: [self nick].
	sender _ IRCProtocolMessage cleanSenderString: sender.
	newLine _ (Text
				string: sender
				emphasis: (Array with: TextEmphasis bold))
				, ': ' , aMessage text , String cr.
	IRCClientSounds genericPrivateMessageArrived.
	self addToConsole: newLine.
	self possibleTabStateChange: IRCDirectMessagesObserver privateMessagesLabel