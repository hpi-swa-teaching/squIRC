as yet unclassified
addModelItemsToWindowMenu: aMenu
	"Add model-related item to the window menu"

	super addModelItemsToWindowMenu: aMenu. 
	aMenu addLine.
	aMenu add: 'release notes...' target: IRCConnection action: #releaseNotes

 