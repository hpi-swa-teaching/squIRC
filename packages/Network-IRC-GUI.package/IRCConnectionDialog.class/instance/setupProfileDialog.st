profiles
setupProfileDialog
	
	^(IRCProfileDialog new)
			mainWin: mainWin;
			parentDialog: self;
			referenceConnection: connection;
			yourself