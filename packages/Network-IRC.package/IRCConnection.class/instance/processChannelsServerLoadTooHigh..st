msg process incoming
processChannelsServerLoadTooHigh: aMessage 
	self processChannelListEnd: nil.
	self channelsBrowser isNil
		ifFalse: [self channelsBrowser channelListDownloadAborted]