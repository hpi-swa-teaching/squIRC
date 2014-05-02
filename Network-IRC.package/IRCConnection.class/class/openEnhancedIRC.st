instance creation
openEnhancedIRC
	^ Preferences autoJoinSqueakChannel
		ifTrue: [self openAndJoinSqueakChannel]
		ifFalse: [self new openWindows]
			