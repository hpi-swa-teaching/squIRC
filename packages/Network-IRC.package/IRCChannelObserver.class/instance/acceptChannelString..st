sending
acceptChannelString: aString 
	"New message path logic."

	^ connection
				sendChannelString: aString
				from: self
				channelName: self channelName