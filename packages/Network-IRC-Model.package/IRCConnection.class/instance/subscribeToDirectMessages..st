UI
subscribeToDirectMessages: anObject
	"send all messages directly to the user's nick to anObject.  anObject must implemented #ircMessageReceieved:"
	directMessageSubscribers add: anObject.