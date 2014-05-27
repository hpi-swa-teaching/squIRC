profiles
selectProfile

	(connectedState or: 
		[self profilesIndex isNil]) 
		ifTrue: [^nil].
	self connection 
			loadProfile: (IRCConnectionProfile 
									getProfileAt: self profilesIndex)