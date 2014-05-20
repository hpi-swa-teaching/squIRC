private
filterOnTopic: aCollection 
	| filter |
	filter := self adjustFilter: self topicFilter.
	^ aCollection
		select: [:each | filter match: each topic]