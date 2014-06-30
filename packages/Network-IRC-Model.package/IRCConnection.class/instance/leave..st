IRC commands
leave: channelName 
	"leave a channel"
	self
		sendMessage: (IRCProtocolMessage
				command: 'part'
				arguments: (Array with: channelName with: self quitMessage))