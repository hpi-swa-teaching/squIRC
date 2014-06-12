profiles
selectProfile
	| profile |
	
	(connectedState or: 
		[self profilesIndex isNil]) 
		ifTrue: [^nil].
	profile := IRCConnectionProfile 
								getProfileAt: self profilesIndex.
	
	IRCConnectionProfile lastSelectedProfile: profile.
	self connection loadProfile: profile