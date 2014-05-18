naval mode
ircMessageRecieved: aMessage 
	| sender newLine |
	sender := aMessage sender
				ifNil: [self nick].
	sender := IRCProtocolMessage cleanSenderString: sender.
	newLine := (Text
				string: sender
				emphasis: (Array with: TextEmphasis bold))
				, ': ' , aMessage text , String cr.
	IRCClientSounds genericPrivateMessageArrived.
	self addToConsole: newLine.
	self possibleTabStateChange: IRCDirectMessagesObserver privateMessagesLabel