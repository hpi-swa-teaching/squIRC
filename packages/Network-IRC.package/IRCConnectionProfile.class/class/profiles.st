profiles
profiles
	"IRCConnectionProfile profiles"
	Profiles == nil ifTrue: [self initializeProfiles].
	^ Profiles