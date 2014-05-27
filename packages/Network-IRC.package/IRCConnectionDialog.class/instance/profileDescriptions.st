profiles
profileDescriptions
	
	IRCConnectionProfile hasProfiles
		ifTrue:  [^IRCConnectionProfile profileNamesSorted]
		ifFalse: [^OrderedCollection new add: 'no profiles configured']