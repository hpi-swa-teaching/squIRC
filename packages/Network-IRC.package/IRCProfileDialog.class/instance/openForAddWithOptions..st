dialog creation
openForAddWithOptions: options 

	editing := false.
	profile := IRCConnectionProfile blank.
	profile options: options.
	self serverButton