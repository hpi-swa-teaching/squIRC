UI
subscribeToProtocolMessages: anObject
	"anObject should respond to #ircProtocolMessage:.  It will be sent all incoming messages"
	protocolMessageSubscribers add: anObject