dialog creation
openOptionsAsPane: aMainWin
	"open a dialogue for options"
	| swappingControl paneName |

	paneName:='Options'.
	swappingControl := aMainWin swapper.
	self mainWin: aMainWin.
	self
		addPane: self buildOptionsPane
		toSwapper: swappingControl
		paneName: paneName
		default: true.

	swappingControl showPaneNamed: paneName.