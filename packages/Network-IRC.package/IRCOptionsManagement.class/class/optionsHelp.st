as yet unclassified
optionsHelp
	"IRCOptionsManagement optionsHelp"
	OptionsHelp == nil
		ifTrue: [self initializeOptions]
		ifFalse: [self checkForMissingOptions].
	^ OptionsHelp