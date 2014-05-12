tests
testServerCreationFromAlternativenetString
	| string server |
	string := 'n16=Alternativenet: Random serverSERVER:irc.altnet.org:6667GROUP:Alternativenet'.
	server := IRCServer from: string.
	self
		should: [server serverName = 'Random server'];
		
		should: [server address = 'irc.altnet.org'];
		
		should: [server ports includes: 6667];
		
		should: [server group = 'Alternativenet'];
		
	should: [server port = 6667]