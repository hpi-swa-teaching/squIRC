as yet unclassified
whoisSelectedUser
	| who msg |
	who _ self channelUser.
	who isNil
		ifTrue: [^ nil].
	msg _ IRCProtocolMessage
				command: 'WHOIS'
				arguments: (Array with: self channelName with: who asString).
	connection sendMessage: msg