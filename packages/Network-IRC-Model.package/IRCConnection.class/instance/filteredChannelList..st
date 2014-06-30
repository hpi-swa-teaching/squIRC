server info
filteredChannelList: anIRCChannelFilter 
	self channelList isNil ifTrue: [^nil].
	^ anIRCChannelFilter isNil
		ifTrue: [self channelList]
		ifFalse: [anIRCChannelFilter filter: self channelList]