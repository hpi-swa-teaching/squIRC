as yet unclassified
initializeOptions
	"IRCOptionsManagement initializeOptions"
	self savedOptions: self defaultOptionValues.
	self optionsHelp: self defaultOptionHelp.
	self optionsDescriptions: self defaultOptionDescriptions