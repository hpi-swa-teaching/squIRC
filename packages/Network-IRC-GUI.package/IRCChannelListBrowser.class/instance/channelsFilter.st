access
channelsFilter
	channelsFilter == nil
		ifTrue: [self initializeChannelsFilter].
	^ channelsFilter