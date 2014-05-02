interface
topicFilter: aText 
	| str |
	str := aText string.
	self channelsFilter topicFilter = str
		ifFalse: [self channelsFilter topicFilter: str.
			 self refreshChannelList]
		