private-initialization
checkForLocalCommandHandling
	"Local commands are never sent to the connection socket (over the  
	wire). See IRCConnection localMessageHandlers."
	"isLocal := IRCConnection localMessageHandlers keys includes: command asLowercase"