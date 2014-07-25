command handling
handleOutWhoisCommand: aMessage

	aMessage stripOffFirstArgument.
	self sendMessage: aMessage