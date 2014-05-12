private
processRequests
	"We are inside a loop."
	| index messageText message stillOpen |
	stillOpen := self getSocketData.
	stillOpen
		ifTrue: [[index := self recieveBuffer indexOf: Character lf.
			index > 0]
				whileTrue: [messageText := self recieveBuffer copyFrom: 1 to: index.
					message := IRCServerProtocolMessage fromString: messageText.
					message serverAddress: self serverAddress;
						 port: self port.
					self processMessage: message.
					self
						recieveBuffer: (self recieveBuffer copyFrom: index + 1 to: self recieveBuffer size)].
			Processor yield]
		ifFalse: [self run: false. self disconnectAsServer]