menu
talkTo
	"talk to some user using 1-to-1 chat messages"
	| user |
	user := FillInTheBlank request: 'user to talk to'.
	user := user withBlanksTrimmed.
	user isEmpty
		ifTrue: [^ self].
	self talkTo: user