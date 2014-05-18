profiles
deleteProfile
	| key |
	profilesIndex == nil
		ifTrue: [^ nil].
	key := profilesIndex.
	IRCConnectionProfile removeProfileNamed: key.
	self changed: #profileDescriptions