set up
tearDown
	savedUserProfiles isNil
		ifFalse: [IRCConnectionProfile profiles: savedUserProfiles deepCopy]