dialog creation
openProfilesAsPane: aMainWin
	"open a dialogue for making new connections as a Pane in MainWindow"
	|swappingControl profilesPaneName |

	profilesPaneName := 'Profiles'.
	swappingControl := aMainWin swapper.
	self mainWin: aMainWin.
	self
		addPane: self buildProfilesPane
		toSwapper: swappingControl
		paneName: profilesPaneName
		default: false.

	swappingControl showPaneNamed: profilesPaneName.