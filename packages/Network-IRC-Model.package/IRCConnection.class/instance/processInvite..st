msg process incoming
processInvite: aMessage 
	"a user is inviting us to join a channel"
	| channelName user observer |
	(IRCOptionsManagement option: #acceptChannelInvites)
		ifFalse: [^ nil].
	channelName := aMessage arguments second.
	user := aMessage prefix.
	(user includes: $!)
		ifTrue: [user := user copyFrom: 1 to: (user indexOf: $!)
							- 1].
	observer := IRCChannelObserver openForChannelNamed: channelName onCaptiveConnection: self.
	(self channelInfo: channelName)
		addMember: self nick.
	self addChannelObserver: observer.
	observer addTextToChannelPane: user , ' has invited you to this channel.' , Character cr asString usingUnpreparedNick: self serverPrefixMessageNick;
		 updateUsers