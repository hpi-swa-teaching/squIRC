msg process outgoing new
addCrLfAndSendString: aString 
	"Handy for diagnostics. We're taking advantage of the fact that the  
	outgoing message sender converts all objects to strings first. So we can  
	just send a string."
	| stream |
	stream _ ReadWriteStream on: ''.
	stream nextPutAll: aString.
	stream nextPut: Character cr.
	stream nextPut: Character lf.
	^ self sendMessage: stream contents