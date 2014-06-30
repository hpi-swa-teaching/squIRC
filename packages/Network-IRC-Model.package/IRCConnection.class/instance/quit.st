IRC commands
quit
	"tell the server we are leaving"
	"self addCrLfAndSendString: 'QUIT :' , self quitMessage."
	self
		sendMessage: (IRCProtocolMessage
				command: 'quit'
				arguments: (Array with: self quitMessage))