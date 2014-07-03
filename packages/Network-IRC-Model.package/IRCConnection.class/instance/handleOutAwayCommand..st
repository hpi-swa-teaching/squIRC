command handling
handleOutAwayCommand: aMessage

	aMessage stripOffFirstArgument.
	self sendMessage: aMessage