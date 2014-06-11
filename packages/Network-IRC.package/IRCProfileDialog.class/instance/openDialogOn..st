dialog creation
openDialogOn: anIRCConnectionProfile 
	"Get here after we do the server dialog window."
	
	editing := true.
	profile := anIRCConnectionProfile.
	self openDialogLabeled: 'edit a profile'.
