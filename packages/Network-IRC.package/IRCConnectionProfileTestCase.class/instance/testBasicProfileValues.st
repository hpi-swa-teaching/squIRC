tests
testBasicProfileValues
	| profile |
	profile := IRCConnectionProfile default.
	self verifyDefaultValuesUsing: profile.
	self verifyDefaultValuesUsing: IRCConnectionProfile createDefault