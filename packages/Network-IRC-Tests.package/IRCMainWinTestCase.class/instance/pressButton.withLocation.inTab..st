as yet unclassified
pressButton: aButtonName withLocation: aNumber inTab: aTabName 
	"loaction is 2 for profiles Tab and 1 for edit and new profiles tab"
	
	(((mainWin swapper submorphNamed: aTabName) submorphs at: aNumber) submorphNamed: aButtonName) performAction.
	