testing support
tProfileOperations
	| profile compareProfile testDefault |
	IRCConnectionProfile initializeProfiles.
	self
		should: [IRCConnectionProfile profiles size = 1].
	self
		should: [IRCConnectionProfile hasProfileNamed: IRCConnectionProfile defaultProfileName].
	profile := self profile1.
	self
		shouldnt: [IRCConnectionProfile hasProfileNamed: profile name].
	IRCConnectionProfile addProfile: profile.
	self
		should: [IRCConnectionProfile profiles size = 2].
	self
		should: [IRCConnectionProfile hasProfileNamed: profile name].
	self
		should: [IRCConnectionProfile hasProfileNamed: IRCConnectionProfile defaultProfileName].
	testDefault := IRCConnectionProfile getProfileNamed: IRCConnectionProfile defaultProfileName.
	self verifyDefaultValuesUsing: testDefault.
	compareProfile := IRCConnectionProfile getProfileNamed: profile name.
	self
		should: [compareProfile == profile].
	compareProfile := profile deepCopy.
	compareProfile userName: 'foo'.
	self
		shouldnt: [profile userName = compareProfile userName].
	IRCConnectionProfile updateProfileNamed: profile name with: compareProfile.
	self
		should: [IRCConnectionProfile profiles size = 2].
	profile := IRCConnectionProfile getProfileNamed: profile name.
	self
		should: [profile userName = compareProfile userName].
	IRCConnectionProfile removeProfileNamed: profile name.
	self
		should: [IRCConnectionProfile hasProfileNamed: IRCConnectionProfile defaultProfileName].
	self
		should: [IRCConnectionProfile profiles size = 1].
	IRCConnectionProfile removeProfileNamed: IRCConnectionProfile defaultProfileName.
	self
		should: [IRCConnectionProfile hasProfileNamed: IRCConnectionProfile defaultProfileName].
	self
		should: [IRCConnectionProfile profiles size = 1]