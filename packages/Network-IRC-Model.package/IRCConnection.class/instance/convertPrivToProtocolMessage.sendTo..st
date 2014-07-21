msg process outgoing new
convertPrivToProtocolMessage: aMessage sendTo: aReceiver 
	"send a private message. 'to' can be a channel name...."
	| msg |
	msg := IRCProtocolMessage
				prefix: nil
				command: 'privmsg'
				arguments: (Array with: aReceiver with: aMessage).
	^msg