IRC commands
join: channelName
	"join a channel"

	self sendMessage: (IRCProtocolMessage
		command: 'join'
		arguments: (Array with: channelName))