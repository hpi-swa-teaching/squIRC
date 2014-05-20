messages
sendMessage: aString
	"send a message on the channel"
	connection privmsgFrom: nil  to: name  text: aString