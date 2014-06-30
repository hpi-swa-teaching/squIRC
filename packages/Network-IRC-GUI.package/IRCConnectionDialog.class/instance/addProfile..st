profiles
addProfile: aConnectionProfile

	IRCConnectionProfile addProfile: aConnectionProfile.
	self updateProfilesList.
	self changed: #profileDescriptions.
