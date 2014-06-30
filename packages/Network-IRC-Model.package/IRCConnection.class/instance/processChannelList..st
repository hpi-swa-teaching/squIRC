private-message handling
processChannelList: aMessage 
	"an item has arrived in the list of channels"
	| chanName chanNumUsers chanTopic |
	aMessage arguments size < 4
		ifTrue: [^ self].
	chanName := aMessage arguments at: 2.
	chanNumUsers := (aMessage arguments at: 3) asNumber.
	chanTopic := aMessage arguments at: 4.
	chanName = '*'
		ifTrue: [^ self].
	channelListBeingBuilt
		ifNil: [channelListBeingBuilt := OrderedCollection new].
	channelListBeingBuilt
		add: (IRCChannelSummary
				name: chanName
				numUsers: chanNumUsers
				topic: chanTopic).
	self channelsBrowser isNil
		ifFalse: [self channelsBrowser channelListDownloading: channelListBeingBuilt size]