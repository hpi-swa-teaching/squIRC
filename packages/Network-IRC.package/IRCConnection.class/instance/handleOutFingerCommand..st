command handling
handleOutFingerCommand: aMessage

	"aMessage stripOffFirstArgument."
	self sendMessage: aMessage