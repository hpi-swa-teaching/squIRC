as yet unclassified
testPaneNames
	
	mainWin openProfilesDialog.
	self should: [mainWin swapper tabs includes: 'Profiles'].

	mainWin openOptionsDialog.
	self should: [mainWin swapper tabs includes: 'Options'].