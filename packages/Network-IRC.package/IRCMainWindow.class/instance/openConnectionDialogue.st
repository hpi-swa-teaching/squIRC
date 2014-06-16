actionButtons
openConnectionDialogue
	self
		connectDialog: (IRCConnectionDialog on: model).
	self connectDialog openDialog