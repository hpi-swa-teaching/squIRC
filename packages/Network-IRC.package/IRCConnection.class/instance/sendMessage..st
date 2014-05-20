network IO
sendMessage: aMessage 
	"queue a message for sending"
	protocolMessagesToSend addLast: aMessage.
	^ true