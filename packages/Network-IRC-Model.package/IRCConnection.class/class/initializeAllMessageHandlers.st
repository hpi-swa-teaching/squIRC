initialization
initializeAllMessageHandlers
	"IRCConnection initializeAllMessageHandlers"
	self
		initializeMessageHandlers; 
		initializeLocalMessageHandlers; 
		initializeOutgoingMessageHandlers.
