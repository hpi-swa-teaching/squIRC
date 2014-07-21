command handling
handleOutJoinCommand: aMessage

	| channelName |
	"self halt."
	aMessage stripOffFirstArgument.
	aMessage command = 'join'
		ifTrue: [channelName := aMessage arguments first.
			(IRCOptionsManagement option: #forceChannelsToHaveLeadingPoundSign)
				ifTrue: [(channelName beginsWith: '#')
						ifFalse: [channelName := '#' , channelName]].
			self openChannelCaptured: channelName].
	self sendMessage: aMessage