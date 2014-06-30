profiles
profileDescriptions
	
	IRCConnectionProfile hasProfiles
		ifTrue:  [^IRCConnectionProfile profileNamesSorted]
		ifFalse: [^{ '[there are no profiles]' }]