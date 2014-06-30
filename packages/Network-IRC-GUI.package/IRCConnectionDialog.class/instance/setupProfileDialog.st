profiles
setupProfileDialog
	
	self hideWindow.	
	^(IRCProfileDialog new)
			parentDialog: self;
			referenceConnection: connection;
			yourself