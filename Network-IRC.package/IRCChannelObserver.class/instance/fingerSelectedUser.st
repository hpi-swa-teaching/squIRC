as yet unclassified
fingerSelectedUser
	| who msg |
	who _ self channelUser.
	who isNil
		ifTrue: [^ nil].
	msg _ IRCProtocolMessage
				command: 'FINGER'
				arguments: (Array with: self channelName with: who asString).
	connection sendMessage: msg