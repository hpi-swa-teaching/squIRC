command handling
handleOutQuoteCommand: aMessage

	| newMessage |
	newMessage := IRCProtocolMessage 
			fromString: aMessage arguments first ,' ', aMessage arguments second.
	"aMessage stripOffFirstArgument."
	aMessage command = 'privmsg'
		ifTrue: [self processPrivmsg: newMessage].
	self sendMessage: newMessage