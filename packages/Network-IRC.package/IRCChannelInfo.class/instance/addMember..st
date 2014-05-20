access
addMember: memberName 
	"note that memberName is on the channel. memberName should be given 
	in the user's preferred capitalization"
	| newMember |
	newMember := IRCChannelMember fromString: memberName.
	newMember channel: self name.
	(members includes: newMember)
		ifFalse: [members add: newMember.
			self changed: #memberNames]