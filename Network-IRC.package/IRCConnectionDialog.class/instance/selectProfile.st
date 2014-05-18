profiles
selectProfile

	(connectedState or: 
		[self profilesIndex isNil]) 
		ifTrue: [^nil].
	IRCConnectionProfile loadProfileAt: self profilesIndex.
	"connection loadProfile: profile"