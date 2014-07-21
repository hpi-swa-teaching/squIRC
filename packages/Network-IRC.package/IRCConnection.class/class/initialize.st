initialization
initialize
	"IRCConnection initialize"
	self
		registerInOpenMenu; 
		initializeIncomingMessageHandlers;
		initializeOutgoingMessageHandlers.
	IRCServer populateServersDatabaseWithBuiltIn