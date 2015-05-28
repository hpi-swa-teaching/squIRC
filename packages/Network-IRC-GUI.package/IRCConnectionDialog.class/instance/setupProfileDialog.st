profiles
setupProfileDialog
	
	self hideWindow.	
	^(IRCProfileDialog new)
			mainWin: mainWin;
			parentDialog: self;
			referenceConnection: connection;
			yourself