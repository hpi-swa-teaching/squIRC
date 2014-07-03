command handling
handleOutNickCommand: aMessage

	aMessage stripOffFirstArgument.
	self sendMessage: aMessage