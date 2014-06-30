private-message handling
processChannelListStart: aMessage
	"start of a channel listing"
	channelListBeingBuilt _ OrderedCollection new.