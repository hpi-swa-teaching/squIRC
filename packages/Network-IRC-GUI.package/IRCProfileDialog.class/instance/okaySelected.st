action buttons
okaySelected
	| targetName |
	
	self changed: #accept.
	editing
		ifTrue: [parentDialog ifNotNil: [:dialog | dialog editedProfile: profile]]
		ifFalse: [targetName := profile name.
			(IRCConnectionProfile hasProfileNamed: targetName)
				ifTrue: [^ self inform: 'That profile name is already taken.']
				ifFalse: [parentDialog addProfile: self profile]].
	self topView delete