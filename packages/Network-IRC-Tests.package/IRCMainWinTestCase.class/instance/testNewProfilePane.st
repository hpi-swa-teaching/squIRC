as yet unclassified
testNewProfilePane
	| count |
	
	mainWin openProfilesDialog.
	self should: [mainWin swapper tabs includes: 'Profiles'].
	count := mainWin swapper tabs size.
	self pressButton: 'BtnNew' withLocation: 2 inTab: 'Profiles'.
	self should: [mainWin swapper tabs size = (count +1) ].
	self pressButton: 'BtnCancel' withLocation: 1 inTab: 'add a profile'.
	self should: [mainWin swapper tabs size = count].
