accessing
topicFilter: aString 
	topicFilter := aString.
		aString isNil
		ifFalse: [self doTopic: true]