network IO
receiveMessagesFromSocket
	| idx messageText |
	
	[socket dataAvailable]
		whileTrue: [messageText := self socket receiveData.
						self receiveBufferAppend: 
								([self networkTextConverter decodeString: messageText] 
															  ifError: [messageText asString])].
	[idx := self receiveBuffer indexOf: Character lf. idx > 0]
		whileTrue: [messageText := self receiveBufferExtract: idx.
						IRCConnection trace: 'rcvd message: "' , messageText , '"'.
						self processMessage: (IRCProtocolMessage fromString: messageText)]