network IO
receiveMessagesFromSocket
	| idx messageText |
	
	[socket dataAvailable]
		whileTrue: [self receiveBufferAppend: 
								(self networkTextConverter
											decodeString: self socket receiveData)].
	[idx := self receiveBuffer indexOf: Character lf. idx > 0]
		whileTrue: [messageText := self receiveBufferExtract: idx.
						IRCConnection trace: 'rcvd message: "' , messageText , '"'.
						self processMessage: (IRCProtocolMessage fromString: messageText)]