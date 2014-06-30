network IO
emptyOutProtocolMessagesToSend
	| amount |
	[socket sendDone
		and: [sendBuffer isNil not
				or: [protocolMessagesToSend size > 0]]]
		whileTrue: [sendBuffer
				ifNil: [protocolMessagesToSend isEmpty
						ifFalse: [sendBuffer := protocolMessagesToSend removeFirst asString ]].
			sendBuffer
				ifNotNil: [IRCConnection trace: 'sendBufer: "' , sendBuffer , '"'.
					amount := socket sendSomeData: sendBuffer.
					sendBuffer := sendBuffer copyFrom: amount + 1 to: sendBuffer size.
					sendBuffer isEmpty
						ifTrue: [sendBuffer := nil]]]