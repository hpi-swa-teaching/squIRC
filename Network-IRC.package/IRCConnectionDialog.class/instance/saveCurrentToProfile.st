profiles
saveCurrentToProfile
	"Ask the user for a new profile name and then save the current setup  
	to that profile."
	| newName newProfile keepLooping |
	[newName := FillInTheBlank request: 'New profile name?'.
	newName isEmpty
		ifTrue: [^ nil].
	keepLooping := IRCConnectionProfile hasProfileNamed: newName.
	keepLooping
		ifTrue: [self inform: 'That profile name is already in use.'].
	keepLooping] whileTrue.
	newProfile := IRCConnectionProfile fromConnection: connection.
	newProfile name: newName.
	IRCConnectionProfile addProfile: newProfile.
	self updateProfilesList.
	self changed: #profileDescriptions