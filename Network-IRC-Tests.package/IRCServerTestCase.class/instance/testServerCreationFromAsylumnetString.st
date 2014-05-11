tests
testServerCreationFromAsylumnetString
	| string server |
	string := 'n24=Asylumnet: EU, UK, LondonSERVER:london.uk.eu.asylumnet.org:7070,7777,6660,6663,6666,6669,7000GROUP:asylumnet'.
	server := IRCServer from: string.
	self
		should: [server serverName = 'EU, UK, London'];
		
		should: [server address = 'london.uk.eu.asylumnet.org'];
		
		should: [server ports includes: 7070];
		
		should: [server ports includes: 7777];
		
		should: [server ports includes: 6660];
		
		should: [server ports includes: 6663];
		
		should: [server ports includes: 6666];
		
		should: [server ports includes: 6669];
		
		should: [server ports includes: 7000];
		
		should: [server group = 'Asylumnet'];
		
	should: [server port = 7000]