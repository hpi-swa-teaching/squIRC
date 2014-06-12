tests
testServerCreationFromDALnetString
	| string server |
	string := 'n1=Random US DALnet serverSERVER:irc.dal.net:7000GROUP:01'.
	server := IRCServer fromMIRCLine: string.
	self
		should: [server serverName = 'Random US DALnet server'];
		
		should: [server address = 'irc.dal.net'];
		
		should: [server ports includes: 7000];
		
		should: [server group = ''];
		
	should: [server port = 7000]