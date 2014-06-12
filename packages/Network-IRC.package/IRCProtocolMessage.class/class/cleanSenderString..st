utility
cleanSenderString: sender
	^(sender includes: $!)
		ifTrue: [sender copyFrom: 1 to: (sender indexOf: $!)
							- 1]
		ifFalse: [sender]
