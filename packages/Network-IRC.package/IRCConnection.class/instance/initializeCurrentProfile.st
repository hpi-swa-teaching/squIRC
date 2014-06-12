private
initializeCurrentProfile

	self currentProfile isValid 
		ifFalse: [(IRCConnectionDialog on: self) openDialog]