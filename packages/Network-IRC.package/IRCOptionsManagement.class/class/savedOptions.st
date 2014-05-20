as yet unclassified
savedOptions
	"IRCOptionsManagement savedOptions"
	SavedOptions == nil
		ifTrue: [self initializeOptions]
		ifFalse: [self checkForMissingOptions].
	^ SavedOptions