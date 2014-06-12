private
sendStringAsProtocolMessage: aString
	| message |
	message := IRCProtocolMessage fromString: aString.
	self sendMessage: message.
