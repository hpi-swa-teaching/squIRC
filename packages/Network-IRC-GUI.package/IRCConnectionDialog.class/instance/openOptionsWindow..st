dialog creation
openOptionsWindow: aMainWin
	"opens Window with Options"
	
	| dialogue swappingControl |
	dialogue := IRCSystemWindow new.
	aMainWin addWindowToClose: dialogue.
	dialogue model: self.
	dialogue name: 'IRCOptions'.
	swappingControl := self buildSwapper.

	self
		addPane: self buildOptionsPane
		toSwapper: swappingControl
		paneName: 'Options'
		default: true.

	dialogue
		addMorph: swappingControl
		frame: (0 @ 0 extent: 1 @ 1).
	swappingControl showPaneNamed: 'Options'.
	dialogue setLabel: 'Options for IRC cllient'.
	dialogue openInWorld.
	^dialogue