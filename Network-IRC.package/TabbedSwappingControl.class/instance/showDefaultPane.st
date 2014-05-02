public API
showDefaultPane
	"Show a pane when there is no other pane to show."
	defaultPaneName isNil
		ifFalse: [self showPaneNamed: defaultPaneName]