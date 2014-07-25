set up
tearDown
	
	self savedUserProfiles ifNotNil: [IRCConnectionProfile profiles: self savedUserProfiles deepCopy].
	self savedLastSelectedProfile ifNotNil: [IRCConnectionProfile lastSelectedProfile: self savedLastSelectedProfile]