msg process outgoing new
sendChannelString: aString from: observer channelName: cName 
	"New message logic."
	^self sendString: aString from: observer to: cName