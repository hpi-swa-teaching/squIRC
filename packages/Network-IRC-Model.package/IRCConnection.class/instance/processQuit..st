private-message handling
processQuit: aMessage 
	"a user has left IRC. Remove them from all chanels"
	| user textMessage |
	user _ aMessage prefix.
	(user includes: $!)
		ifTrue: [user _ user copyFrom: 1 to: (user indexOf: $!)
							- 1].
	(IRCOptionsManagement option: #showQuitsInChannel)
		ifTrue: [textMessage _ user , ' has quit IRC.'.
			aMessage arguments isEmpty ifFalse: [
				textMessage _ textMessage, '  '
						, (self markIfURL: (aMessage arguments at: 1) startingAt: 1)].
			(self directMessageSubscribers select: [:each | each talkingTo = user]) 
				do: [:each | each addToChatText: textMessage , Character cr asString].
			(self channelObservers select: [:each | each channel hasMember: user]) 
				do: [:each | each addTextToChannelPane: textMessage , 
					Character cr asString usingUnpreparedNick: self serverPrefixMessageNick]].
			
	subscribedChannels do: [:channel | (channel hasMember: user)
											ifTrue: [channel removeMember: user]].
	self channelObservers do: [:obs | obs updateUsers].
