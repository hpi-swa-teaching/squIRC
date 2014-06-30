as yet unclassified
talkToSelectedUser
	self channelUser isNil
		ifTrue: [^ nil].
	self channelUser = connection nick
		ifTrue: [^ nil].
	IRCDirectMessagesObserver openForConnection: channel connection talkingTo: self channelUser