tests
testDefaultServer
	| server |
	server := IRCServer defaultServer.
	self
		should: [server serverName = 'Open Projects Net'];
		
		should: [server address = 'irc.freenode.net'];
		
		should: [server ports includes: 6667];
		
	should: [server port = 6667]