instance creation
forChannelNamed: aString  onConnection: connection
	"create an instance for the channel with the given name"
	^super new initializeName: aString connection: connection