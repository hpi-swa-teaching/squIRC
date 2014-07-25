command handling
handleOutQuoteCommand: aMessage

	| newMessage |
	self halt.
	newMessage := IRCProtocolMessage 
			fromString: aMessage arguments first ,' ', aMessage arguments second.
	"aMessage stripOffFirstArgument."
	aMessage command = 'privmsg'
		ifTrue: [self processPrivmsg: newMessage].
	self sendMessage: newMessage