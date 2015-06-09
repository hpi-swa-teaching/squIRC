actionButtons
openConnectionDialogue
	self
		connectDialog: (IRCConnectionDialog on: model).
	self connectDialog openDialogAsPane: self.