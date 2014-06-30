as yet unclassified
optionsDescriptions
	"IRCOptionsManagement optionsDescriptions"
	OptionsDescriptions == nil
		ifTrue: [self initializeOptions]
		ifFalse: [self checkForMissingOptions].
	^ OptionsDescriptions