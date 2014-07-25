set up
setUp
	super setUp.
	savedUserProfiles := IRCConnectionProfile profiles deepCopy.
	IRCConnectionProfile resetProfiles 