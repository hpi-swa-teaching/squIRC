open channel observer
openChannelNamed: channelName
	| observer |
	connection connected ifFalse: [
		self inform: 'Not connected to any server.'
	]
	ifTrue: [
		observer _ (IRCOptionsManagement option: #tabbedChannelWindows)
				ifTrue: [IRCChannelObserver openForChannelNamed: channelName onCaptiveConnection: connection]
				ifFalse: [IRCChannelObserver openForChannelNamed: channelName onConnection: connection].
		connection addChannelObserver: observer;
			recentChannelName: channelName
	]
