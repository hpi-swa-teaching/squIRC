as yet unclassified
removeChannelObserver: obj 
	self channelObservers remove: obj ifAbsent: [nil]