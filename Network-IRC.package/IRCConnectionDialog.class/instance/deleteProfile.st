profiles
deleteProfile
	| key |
	profilesIndex == nil
		ifTrue: [^ nil].
	key := profilesIndex.
	key = IRCConnectionProfile defaultProfileName ifTrue: [^self inform: 'Cannot remove ', IRCConnectionProfile defaultProfileName].
	IRCConnectionProfile removeProfileNamed: key.
	self changed: #profileDescriptions