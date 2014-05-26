as yet unclassified
fingerSelectedUser
	| who msg |
	who := self channelUser.
	who isNil
		ifTrue: [^ nil].
	msg := IRCProtocolMessage
				command: 'FINGER'
				arguments: (Array with: self channelName with: who asString).
	connection sendMessage: msg