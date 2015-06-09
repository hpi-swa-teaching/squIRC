tests
testGUI
| ircConsole setup profileCreation |
	
	IRCConnectionProfile clearProfiles.
	IRCConnection openEnhancedIRC.
	
	setup := self findWindowNamed: 'setup for IRC cllient'.
	setup closeBoxHit.
	
	ircConsole := self findWindowNamed: 'squIRC'.
	
	self pressButton: 'BtnSetup' of: ircConsole.
	
	self mainWin: ircConsole hasPane: 'Profiles'.
	self pressButton: 'squIRC.Tab.Profiles' of: ircConsole. 
	self pressButton: 'BtnNew' of: ircConsole.
 
     profileCreation := self findWindowNamed: 'add a profile'.
	
	self enterText: 'TestProfile' into: 'TxtProfile' of: profileCreation.
	self enterText: 'Test Name' into: 'TxtName' of: profileCreation.
	self enterText: 'TestNick' into: 'TxtNick' of: profileCreation.
	self enterText: 'Test User' into: 'TxtUser' of: profileCreation.
	self enterText: 'irc.freenode.net:6667' into: 'TxtServer' of: profileCreation.   
	self pressButton: 'BtnOkay' of:  profileCreation.

	
	self pressButton: 'BtnSelect' of: ircConsole.
	
	self pressButton: 'BtnConnect' of:ircConsole.
	
	(Delay forMilliseconds: 1000) wait.
	
	ircConsole closeBoxHit.
	