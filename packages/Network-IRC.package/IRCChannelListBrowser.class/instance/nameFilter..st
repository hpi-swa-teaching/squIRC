interface
nameFilter: aText 
	| str |
	str := aText string.
	self channelsFilter nameFilter = str
		ifFalse: [self channelsFilter nameFilter: str.
			 self refreshChannelList]