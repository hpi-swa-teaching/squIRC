private-message handling
processNoTopic: aMessage
	"remove a channel's topic"
	(self channelInfo: (aMessage arguments at: 2)) topic: ''