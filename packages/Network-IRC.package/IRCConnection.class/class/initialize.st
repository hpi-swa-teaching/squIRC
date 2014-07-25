initialization
initialize
	"IRCConnection initialize"
	self
		registerInOpenMenu; 
		initializeAllMessageHandlers.
	IRCServer populateServersDatabaseWithBuiltIn