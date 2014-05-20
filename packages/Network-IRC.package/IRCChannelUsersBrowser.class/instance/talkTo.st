as yet unclassified
talkTo
	"open a window for talking to the selected user"
	| user |
	user := self selectedUser.
	user
		ifNil: [^ self].
	^ IRCDirectMessagesObserver openForConnection: channel connection talkingTo: user