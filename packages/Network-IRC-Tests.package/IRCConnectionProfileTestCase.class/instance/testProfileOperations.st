tests
testProfileOperations
| tmpProfile |
	
	self shouldnt: [IRCConnectionProfile hasProfiles].
	self shouldnt: [IRCConnectionProfile lastSelectedProfile isValid].
	
	IRCConnectionProfile addProfile: self profileA.
	
	self should: [IRCConnectionProfile hasProfiles].
	self shouldnt: [IRCConnectionProfile profileNamesSortedValid].
	
	IRCConnectionProfile addProfile: self profileB.
	tmpProfile := IRCConnectionProfile getProfileAt: 2.
	
	self should: [IRCConnectionProfile profileNamesSortedValid].
	self should: [self profileB = tmpProfile].
	self should: [IRCConnectionProfile hasProfileNamed: self profileA name].
	self should: [self profileA = (IRCConnectionProfile getProfileNamed: self profileA name)].
	
	IRCConnectionProfile selectProfileAt: 2 into: self connection.
	
	self should: [IRCConnectionProfile lastSelectedProfile isValid].
	self should: [self profileB = IRCConnectionProfile lastSelectedProfile]