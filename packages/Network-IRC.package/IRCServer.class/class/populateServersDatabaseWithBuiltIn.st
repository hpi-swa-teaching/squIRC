test
populateServersDatabaseWithBuiltIn
	"IRCServer populateServersDatabaseWithBuiltIn"
	"Test populate from internal information."
	| stream |
	stream := ReadStream on: self serversList.
	self initializeServers.
	self buildServersListFrommIRCIniStream: stream reset.
	self addOpenProjectsNetServer.
	self addLocalHost