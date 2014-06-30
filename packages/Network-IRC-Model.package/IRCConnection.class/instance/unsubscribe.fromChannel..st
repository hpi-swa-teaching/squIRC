UI
unsubscribe: anObject fromChannel: channelName
	"see subscribe:toChannel:"

	|  lChannelName info |

	lChannelName _ channelName asIRCLowercase.

	info _ subscribedChannels at: lChannelName ifAbsent: [ ^self ].
	info unsubscribe: anObject.
