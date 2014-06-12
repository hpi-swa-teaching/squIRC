access
addMembers: listOfIRCChannelMembers 
	listOfIRCChannelMembers
		do: [:each | (members includes: each)
				ifFalse: [members add: each]].
	self changed: #memberNames.
	connection channelMembersLoaded: self