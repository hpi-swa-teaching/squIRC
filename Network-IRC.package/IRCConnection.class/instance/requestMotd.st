IRC commands
requestMotd
	self sendMessage: (IRCProtocolMessage command: 'motd')