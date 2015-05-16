dialog creation
openDialog
	"open a dialogue for making new connections"
	| dialogue swappingControl profilesPaneName |
	profilesPaneName := 'Profiles'.
	dialogue := IRCSystemWindow new.
	dialogue model: self.
	dialogue name: 'IRCDlgCon'.
	swappingControl := self buildSwapper.

	self
		addPane: self buildOptionsPane
		toSwapper: swappingControl
		paneName: 'Current Options'
		default: true.
	self
		addPane: self buildProfilesPane
		toSwapper: swappingControl
		paneName: 'Profiles'
		default: false.
	dialogue
		addMorph: swappingControl
		frame: (0 @ 0 extent: 1 @ 1).
	swappingControl showPaneNamed: profilesPaneName.
	dialogue setLabel: 'setup for IRC cllient'.
	dialogue openInWorld