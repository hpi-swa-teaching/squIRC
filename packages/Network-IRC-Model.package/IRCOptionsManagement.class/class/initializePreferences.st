as yet unclassified
initializePreferences
	"IRCOptionsManagement initializePreferences"
	Preferences
		preferenceAt: #autoJoinSqueakChannel
		ifAbsent: [self addDefaultPreferences]