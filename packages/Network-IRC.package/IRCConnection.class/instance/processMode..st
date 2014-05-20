msg process incoming
processMode: aMessage 
	| channelName memberName modeVerb modeChange textMessage user |
	channelName := aMessage arguments at: 1.
	modeChange := aMessage arguments at: 2.
	('vo' includes: modeChange second)
		ifFalse: [^ nil].
	memberName := aMessage arguments at: 3.
	user := aMessage prefix.
	(user includes: $!)
		ifTrue: [user := user copyFrom: 1 to: (user indexOf: $!)
							- 1].
	modeVerb := 'modified status for'.
	modeChange = '+v'
		ifTrue: [modeVerb := 'voiced'].
	modeChange = '-v'
		ifTrue: [modeVerb := 'un-voiced'].
	modeChange = '+o'
		ifTrue: [modeVerb := 'opped'].
	modeChange = '-o'
		ifTrue: [modeVerb := 'de-opped'].
	(self channelInfo: channelName)
		modeChanged: modeChange
		forMemberNamed: memberName.
	(self channelObservers
		select: [:each | each channelName asIRCLowercase = channelName asIRCLowercase])
		do: [:obs | obs updateUsers].
	(IRCOptionsManagement option: #showModeChangesInChannel)
		ifTrue: [textMessage := user , ' has ' , modeVerb , ' ' , memberName , '.'.
			self
				sendString: textMessage
				withNickTag: self serverPrefixMessageNick
				ifFrontChannelObserverIs: channelName]