private-message handling
processChannelListEnd: aMessage 
	"a complete channel listing has arrived"
	"end of a channel listing"
	aMessage isNil
		ifTrue: [^ nil].
	channelListBeingBuilt isNil ifFalse: [
		self channelList: channelListBeingBuilt asArray].
	channelListBeingBuilt := nil.
	self changed: #channelList.
	self channelsBrowser isNil
		ifFalse: [self channelsBrowser channelListDownloadCompleted]