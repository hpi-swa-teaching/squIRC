set up
setUp
	super setUp.
	self savedUserProfiles: IRCConnectionProfile profiles deepCopy.
	self savedLastSelectedProfile: IRCConnectionProfile lastSelectedProfile.
	IRCConnectionProfile clearProfiles