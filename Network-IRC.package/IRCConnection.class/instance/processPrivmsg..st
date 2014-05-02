private-message handling
processPrivmsg: aMessage 
	"handle a PRIVMSG or NOTICE message"
	"put together the message"
	| sender recipient text privMessage aChannelInfo |

	sender _ aMessage prefix.
	recipient _ aMessage arguments at: 1.
	text _ aMessage arguments at: 2.
	privMessage _ IRCMessage
				sender: sender
				recipient: recipient
				text: text.
	"If the recipient is a channel name, broadcast the message to all  
	channel subscribers."
	aChannelInfo _ subscribedChannels
				at: recipient asIRCLowercase
				ifAbsent: [].
	aChannelInfo
		ifNotNil: [aChannelInfo subscribers
				do: [:sub | sub ircMessageRecieved: privMessage].
			^ self].
	"If the recipient is a nick, or if the message did not originate from a user,
	broadcast to all private message subscribers."
	(recipient asIRCLowercase = nick asIRCLowercase
			or: [sender isNil])
		ifTrue: ["We need to do a copy here before we start looping since the  
			collection size can grow while we are processing."
			directMessageSubscribers copy
				do: [:sub | sub ircMessageRecieved: privMessage]]