open channel observer
createChannel
	| channelName |
	channelName := FillInTheBlank request: 'channel name'.
	channelName isEmpty ifTrue: [^self].
	channelMenuList add: channelName.
	self openChannelNamed: channelName