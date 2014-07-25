IRC commands
privmsgFrom: sender to: receiver text: message 
	"send a private message. 'to' can be a channel name...."
	| msg |
	msg := IRCProtocolMessage
				prefix: sender
				command: 'privmsg'
				arguments: (Array with: receiver with: message). 
	"sbw - The next line is to force behavior as if we received the message  
	we will send. This is because these PRIVMSGs are not echoed back to us."
	self processIncomingMessage: msg.
	^ self sendMessage: msg