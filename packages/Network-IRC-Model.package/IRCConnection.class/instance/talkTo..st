as yet unclassified
talkTo: user 
	user isNil
		ifTrue: [^ self].
	^ IRCDirectMessagesObserver openForConnection: self talkingTo: user