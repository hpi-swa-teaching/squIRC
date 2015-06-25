as yet unclassified
testNewProfilePane
	
	| newButton editButton |

	mainWin openProfilesDialog.
	self should: [mainWin swapper tabs includes: 'Profiles'].
	newButton := self deepFindSubmorph: 'BtnNew'.
	editButton := self deepFindSubmorph: 'BtnEdit'.
	newButton performAction.
	editButton performAction. 
	self should: [mainWin swapper tabs includes: 'add a profile'].
	self should: [mainWin swapper tabs includes: 'edit a profile'].
