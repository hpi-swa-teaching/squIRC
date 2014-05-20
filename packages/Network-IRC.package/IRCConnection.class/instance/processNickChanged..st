msg process incoming
processNickChanged: aMessage 
	| newNick user channelName textMessage |
	newNick _ aMessage arguments first.
	user _ aMessage prefix.
	(user includes: $!)
		ifTrue: [user _ user copyFrom: 1 to: (user indexOf: $!)
							- 1].
	(self subscribedChannelsHavingMemberNamed: user)
		do: [:chanInfo | 
			chanInfo nickFor: user changedTo: newNick.
			channelName _ chanInfo name.
			(self channelObservers
				select: [:each | each channelName = channelName])
				do: [:obs | 
					obs updateUsers.
					textMessage _ 'User ' , user , ' has changed nick to: ' , newNick.
					self
						sendString: textMessage
						withNickTag: self serverPrefixMessageNick
						ifFrontChannelObserverIs: channelName]].
	user = nick ifTrue: [self nick: newNick]