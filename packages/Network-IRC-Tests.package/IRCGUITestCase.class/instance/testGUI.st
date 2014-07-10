tests
testGUI
| window setup |
	
	IRCConnection openEnhancedIRC.
	
	window := self findWindowNamed: 'IRCWin'.
	
	self pressButton: 'IRCWin.BtnSetup' of: window.
	
	setup := self findWindowNamed: 'IRCDlgCon'.
	
	setup closeBoxHit.
	window closeBoxHit.
	
	
	
	
	
	