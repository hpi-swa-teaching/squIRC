instance creation
openForChannelNamed: channelName  onConnection: connection 
	^(super new connection: connection  channelName: channelName) openView