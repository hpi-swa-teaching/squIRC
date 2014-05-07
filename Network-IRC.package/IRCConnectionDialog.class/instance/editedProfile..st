profiles
editedProfile: aProfile 
	self changed: #profileDescriptions.
	"Check if we need to fix the key to agree with the name of the profile."
	"IRCConnectionProfile checkKeyForProfileNamed: aProfile name"
	self break.
	IRCConnectionProfile updateProfileNamed: (aProfile name) with: aProfile