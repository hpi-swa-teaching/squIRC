tests
testServerCreationFromGammaforceString
	| string server |
	string := 'n149=Gammaforce: US, SphinxSERVER:sphinx.or.us.gammaforce.org:6660,6663,6669GROUP:gammaforce'.
	server := IRCServer from: string.
	self
		should: [server serverName = 'US, Sphinx'];
		
		should: [server address = 'sphinx.or.us.gammaforce.org'];
		
		should: [server ports includes: 6660];
		
		should: [server ports includes: 6663];
		
		should: [server ports includes: 6669];
		
		should: [server group = 'Gammaforce'];
		should: [server port = 6669]