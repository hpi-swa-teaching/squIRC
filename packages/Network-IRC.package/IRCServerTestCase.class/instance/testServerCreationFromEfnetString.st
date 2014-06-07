tests
testServerCreationFromEfnetString
	| string server |
	string := 'n103=EFnet: EU, NO, OsloSERVER:oslo efnet.telia.no:6667GROUP:efnet'.
	server := IRCServer fromMIRCLine: string.
	self
		should: [server serverName = 'EU, NO, Oslo'];
		
		should: [server address = 'oslo efnet.telia.no'];
		
		should: [server ports includes: 6667];
		
		should: [server group = 'EFnet'];
		should: [server port = 6667]