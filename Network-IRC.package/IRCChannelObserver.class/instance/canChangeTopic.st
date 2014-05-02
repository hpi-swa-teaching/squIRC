topic pane
canChangeTopic
	| nick user |
	nick := self nick.
	user := channel findMember: nick.
	user isNil ifTrue: [^false].
	^ user canChangeTopic