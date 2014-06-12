tests
testServersManageent
	| string server found |
	string := 'n24=Test:Test ServerSERVER:test.server.org:1234,5678GROUP:test'.
	server := IRCServer fromMIRCLine: string.
	found := IRCServer findServerNamed: 'Test Test Server' address: 'test.server.org'.
	self
		should: [found isNil].
	IRCServer addServer: server.
	found := IRCServer findServerNamed: 'Test Test Server' address: 'test.server.org'.
	self
		should: [found serverName = 'Test Server'].
	IRCServer removeServerNamed: 'Test Test Server' address: 'test.server.org'.
	found := IRCServer findServerNamed: 'Test Test Server' address: 'test.server.org'.
	self
		should: [found isNil]