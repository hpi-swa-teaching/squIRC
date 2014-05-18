profiles
saveCurrentToProfile
	"Open a profile dialog on a copy of the current profile"
	
	self setupProfileDialog 
				openDialogOn: (IRCConnectionProfile 
									copy: (IRCConnectionProfile currentProfile)
									name: '')