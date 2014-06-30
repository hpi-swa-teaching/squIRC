profiles
deleteProfile

	self profilesIndex ifNil: [^nil].
	IRCConnectionProfile removeProfileAt: self profilesIndex.
	self changed: #profileDescriptions