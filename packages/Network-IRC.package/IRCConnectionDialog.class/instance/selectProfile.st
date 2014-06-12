profiles
selectProfile

	(self connection connected or: 
		[self profilesIndex isNil]) 
		ifTrue: [^nil].
	self connection 
			loadProfile: (IRCConnectionProfile 
									getProfileAt: self profilesIndex)