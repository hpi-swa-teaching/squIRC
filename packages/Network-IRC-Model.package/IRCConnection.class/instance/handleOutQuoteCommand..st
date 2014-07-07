command handling
handleOutQuoteCommand: aMessage

	aMessage stripOffFirstArgument.
	self sendMessage: aMessage