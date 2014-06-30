as yet unclassified
versionSelectedUser
	| who msg |
	who _ self channelUser.
	who isNil
		ifTrue: [^ nil].
	msg _ IRCProtocolMessage
				command: 'VERSION'
				arguments: (Array with: self channelName with: who asString).
	connection sendMessage: msg