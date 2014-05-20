profiles
selectProfile
	| key profile |
	connectedState
		ifTrue: [^ nil].
	key := profilesIndex.
	profile := IRCConnectionProfile getProfileNamed: key.
	profile isNil
		ifTrue: [^ self inform: 'Could not find selected profile.'].
	connection loadProfile: profile