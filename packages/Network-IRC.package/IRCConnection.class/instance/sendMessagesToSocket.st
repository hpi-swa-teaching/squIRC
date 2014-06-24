network IO
sendMessagesToSocket
	| message buffer amount |
	
	[message := self protocolMessageQueueRemove]
		whileNotNil: [
			buffer := self networkTextConverter encodeString: message asString.
			IRCConnection trace: 'sendBufer: "' , buffer , '"'.
			[buffer size > 0]
				whileTrue: [amount := self socket sendSomeData: buffer.
								buffer := buffer copyFrom: amount + 1 to: buffer size]]