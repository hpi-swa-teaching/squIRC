access
channelDescriptions
	| list topicLimit topicString |
	topicLimit := 100.
	list := Array new: 3.
	1
		to: list size
		do: [:index | list at: index put: OrderedCollection new].
	channelList
		do: [:channel | 
			(list at: 1)
				add: channel name.
			(list at: 2)
				add: channel numUsers printString.
			topicString := channel topic.
			topicString size > topicLimit
				ifTrue: [topicString := topicString copyFrom: 1 to: topicLimit].
			(list at: 3)
				add: topicString].
	^ list