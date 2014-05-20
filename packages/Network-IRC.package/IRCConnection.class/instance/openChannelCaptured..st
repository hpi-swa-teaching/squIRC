as yet unclassified
openChannelCaptured: aString 
	| observer |
	observer _ IRCChannelObserver openForChannelNamed: aString onCaptiveConnection: self.
	self addChannelObserver: observer;
		 recentChannelName: aString