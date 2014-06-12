private-message handling
processQuit: aMessage 
	"a user has left IRC. Remove them from all chanels"
	| user textMessage |
	user _ aMessage prefix.
	(user includes: $!)
		ifTrue: [user _ user copyFrom: 1 to: (user indexOf: $!)
							- 1].
	subscribedChannels
		do: [:channel | (channel hasMember: user)
				ifTrue: [channel removeMember: user]].
	self channelObservers
		do: [:obs | obs updateUsers].
	(IRCOptionsManagement option: #showQuitsInChannel)
		ifTrue: [textMessage _ user , ' has quit IRC.'.
			aMessage arguments isEmpty ifFalse: [
				textMessage _ textMessage, '  '
						, (self markIfURL: (aMessage arguments at: 1) startingAt: 1)].
			self
				sendString: textMessage
				withNickTag: self serverPrefixMessageNick
				ifFrontChannelObserverIs: nil]