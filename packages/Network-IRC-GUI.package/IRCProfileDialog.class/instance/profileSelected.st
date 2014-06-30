action buttons
profileSelected
	| targetName |
	editing
		ifTrue: [parentDialog editedProfile: profile]
		ifFalse: [targetName := profile name.
			(IRCConnectionProfile hasProfileNamed: targetName)
				ifTrue: [^ self inform: 'That profile name is already taken.']
				ifFalse: [parentDialog addProfile: profile]].
	self topView delete