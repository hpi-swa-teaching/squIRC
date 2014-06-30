UI
openView
	gui := IRCMainWindow labelled: IRCMainWindow baseWindowTitle.
	gui model: self.
	gui buildMorphicWindow.
	self subscribeToProtocolMessages: self.
	gui openInWorld