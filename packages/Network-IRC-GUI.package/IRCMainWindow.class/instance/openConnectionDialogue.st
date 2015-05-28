actionButtons
openConnectionDialogue
	self
		connectDialog: ((IRCConnectionDialog on: model) mainWin: self).
	self connectDialog openDialog