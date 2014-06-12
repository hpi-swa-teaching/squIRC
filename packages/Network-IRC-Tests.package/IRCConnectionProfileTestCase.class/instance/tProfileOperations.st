testing support
tProfileOperations
	| profile compareProfile |
	
	IRCConnectionProfile resetProfiles.
	
	self shouldnt: [IRCConnectionProfile hasProfiles].
	
	profile := self profile1.
	
	self shouldnt: [IRCConnectionProfile hasProfileNamed: profile name].
	
	IRCConnectionProfile addProfile: profile.
	
	self should: [IRCConnectionProfile hasProfiles].
	self should: [IRCConnectionProfile hasProfileNamed: profile name].

	compareProfile := IRCConnectionProfile 
									getProfileNamed: profile name.
	self should: [compareProfile == profile].
	
	compareProfile := profile deepCopy.
	compareProfile userName: 'foo'.
	
	self shouldnt: [profile userName = compareProfile userName].
	
	IRCConnectionProfile updateProfileNamed: profile name 
									with: compareProfile.
	self should: [IRCConnectionProfile profiles size = 1].
	
	profile := IRCConnectionProfile 
									getProfileNamed: profile name.
	
	self should: [profile userName = compareProfile userName].
	
	IRCConnectionProfile removeProfileNamed: profile name.
	
	self should: [IRCConnectionProfile profiles size = 0].
	self shouldnt: [IRCConnectionProfile hasProfiles]