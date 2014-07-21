tests
testGUI
| ircConsole setup profileCreation |
	
	self break.
	IRCConnectionProfile clearProfiles.
	IRCConnection openEnhancedIRC.
	
	setup := self findWindowNamed: 'IRCDlgCon'.
	setup closeBoxHit.
	
	ircConsole := self findWindowNamed: 'IRCWin'.
	
	self pressButton: 'BtnSetup' of: ircConsole.
	
	setup := self findWindowNamed: 'IRCDlgCon'.
	self pressButton: 'Tab.Profiles' of: setup. 
	self pressButton: 'BtnNew' of: setup.
 
     profileCreation := self findWindowNamed: 'IRCDlgProfile'.
	
	self enterText: 'TestProfile' into: 'TxtProfile' of: profileCreation.
	self enterText: 'Test Name' into: 'TxtName' of: profileCreation.
	self enterText: 'TestNick' into: 'TxtNick' of: profileCreation.
	self enterText: 'Test User' into: 'TxtUser' of: profileCreation.
	self enterText: 'irc.freenode.net:6667' into: 'TxtServer' of: profileCreation.   
	self pressButton: 'BtnOkay' of:  profileCreation.
	
	setup := self findWindowNamed: 'IRCDlgCon'.
	
	self pressButton: 'BtnSelect' of: setup.
	 
	setup closeBoxHit.
	
	self pressButton: 'BtnConnect' of:ircConsole. 
	