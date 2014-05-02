initialization
initialize
	"IRCConnection initialize"
	self
		fixAllBadProfileKeys; 
		registerInOpenMenu; 
		initializeAllMessageHandlers.
	IRCServer populateServersDatabaseWithBuiltIn