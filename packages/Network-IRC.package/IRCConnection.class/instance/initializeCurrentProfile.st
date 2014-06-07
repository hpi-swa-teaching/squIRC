private
initializeCurrentProfile
	self currentProfile isValid 
		ifFalse: [IRCProfileDialog new openDialogOn:
					(self currentProfile)].