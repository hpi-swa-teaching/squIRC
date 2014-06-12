IRC commands
privmsgFrom: from to: to text: text 
	"send a private message. 'to' can be a channel name...."
	| msg |
	msg := IRCProtocolMessage
				prefix: from
				command: 'privmsg'
				arguments: (Array with: to with: text).
	"sbw - The next line is to force behavior as if we received the message  
	we will send. This is because these PRIVMSGs are not echoed back to us."
	self processMessage: msg.
	^ self sendMessage: msg