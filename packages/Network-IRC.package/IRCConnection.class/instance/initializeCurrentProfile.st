private
initializeCurrentProfile

	IRCConnectionProfile lastSelectedProfile isValid
		ifTrue: [self currentProfile: IRCConnectionProfile lastSelectedProfile]
		ifFalse: [(IRCConnectionDialog on: self) openDialog]