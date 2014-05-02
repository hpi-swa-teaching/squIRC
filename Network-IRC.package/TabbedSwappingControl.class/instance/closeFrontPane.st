public API
closeFrontPane
	| nextPane |
	nextPane _ self nameOfPaneToLeftOfFrontPane.
	self closePane: frontMost.
	nextPane isNil ifFalse: [self showPaneNamed: nextPane]