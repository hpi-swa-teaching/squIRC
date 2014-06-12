instance creation
openForChannelNamed: channelName onCaptiveConnection: connection 
	^ (super new connection: connection channelName: channelName) openCapturedView