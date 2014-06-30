msg process incoming
sendString: aString withNickTag: nickTag ifFrontChannelObserverIs: channelName 
	"Utility method. If you don't know the channelName just use nil."
	| frontModel |
	
	self frontMost isNil
		ifTrue: [^ nil].
	self frontMost externalName = 'console'
		ifTrue: [^ nil].
	channelName isNil
		ifFalse: [self frontMost externalName asIRCLowercase = channelName asIRCLowercase
				ifFalse: [^ nil]].
	(self frontMost hasProperty: #swapModel)
		ifFalse: [^ nil].
	frontModel := self frontMost valueOfProperty: #swapModel.
	(frontModel isKindOf: IRCChannelObserver)
		ifTrue: [frontModel addTextToChannelPane: aString , Character cr asString usingUnpreparedNick: nickTag].
	(frontModel isKindOf: IRCDirectMessagesObserver)
		ifTrue: [frontModel addToChatText: aString , Character cr asString]