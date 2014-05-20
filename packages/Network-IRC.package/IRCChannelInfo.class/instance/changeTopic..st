access
changeTopic: aText
	"attempt to change the topic"
	connection sendMessage: (IRCProtocolMessage
		command: 'TOPIC'
		arguments: (Array with: self name with: aText asString)).
	^true