network IO
populateReceiveBufferFromPollingLoop
	| idx messageText message |
	[socket dataAvailable]
		whileTrue: [recieveBuffer := recieveBuffer , socket receiveData ].
	"parse as many messages as possible"
	[idx := recieveBuffer indexOf: Character lf.
	idx > 0]
		whileTrue: [messageText := recieveBuffer copyFrom: 1 to: idx.
			IRCConnection trace: 'rcvd message: "' , messageText , '"'.
			message := IRCProtocolMessage fromString: messageText.
			self processMessage: message.
			recieveBuffer := recieveBuffer copyFrom: idx + 1 to: recieveBuffer size]