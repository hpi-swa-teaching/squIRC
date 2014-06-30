profile management
selectProfileAt: anIndex into: anIRCConnection

	(self getProfileAt: anIndex) 
			ifNotNil: [:profile | 	self lastSelectedProfile: profile.
											anIRCConnection loadProfile: profile]