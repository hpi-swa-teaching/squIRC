msg process outgoing new
sendPrivateString: aString from: observer to: talkingTo 
	"New message logic."
	^self sendString: aString from: observer to: talkingTo