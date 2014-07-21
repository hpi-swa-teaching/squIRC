command handling
handleOutDccCommand: aMessage

	"aMessage stripOffFirstArgument."
	self sendMessage: aMessage