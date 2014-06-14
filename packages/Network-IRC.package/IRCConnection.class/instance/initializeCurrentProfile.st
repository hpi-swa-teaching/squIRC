private
initializeCurrentProfile

	IRCConnectionProfile lastSelectedProfile isValid
		ifTrue: [self loadProfile: IRCConnectionProfile lastSelectedProfile]
		ifFalse: [(IRCConnectionDialog on: self) openDialog]