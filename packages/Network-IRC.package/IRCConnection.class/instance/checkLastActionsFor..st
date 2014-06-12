msg process outgoing new
checkLastActionsFor: msg 
	| channelName |
	msg command = 'join'
		ifTrue: [channelName _ msg arguments first.
			(IRCOptionsManagement option: #forceChannelsToHaveLeadingPoundSign)
				ifTrue: [(channelName beginsWith: '#')
						ifFalse: [channelName _ '#' , channelName]].
			self openChannelCaptured: channelName]