access
subscribe: anObject
	"add anObject as a subscriber.  anObject must respond to ircMessageRecieved"

	subscribers isEmpty ifTrue: [ connection join: name ].
	subscribers add: anObject