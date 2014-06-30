IRC commands
requestChannelList
	"request a list of all channels"
	self sendMessage: (IRCProtocolMessage command: 'list')