command handling
handleOutJoinCommand: aMessage

	| channelName |
	aMessage command = 'join'
		ifTrue: [channelName := aMessage arguments first.
			(IRCOptionsManagement option: #forceChannelsToHaveLeadingPoundSign)
				ifTrue: [(channelName beginsWith: '#')
						ifFalse: [channelName := '#' , channelName]].
			self openChannelCaptured: channelName].
	aMessage stripOffFirstArgument.
	self sendMessage: aMessage