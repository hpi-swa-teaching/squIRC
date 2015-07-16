as yet unclassified
testMenuIRC
|current|
	
	current := IRCMainWindow allInstances size.
	mainWin itemIRCNew.
	self should: [IRCMainWindow allInstances size == (current+1)].