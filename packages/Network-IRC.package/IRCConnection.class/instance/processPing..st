private-message handling
processPing: aMessage
	"ping request"
	self sendMessage: (IRCProtocolMessage command: 'pong' arguments: aMessage arguments).