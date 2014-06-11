action buttons
okaySelected
	| targetName |
	self entryMorphs do: [:entry | entry accept].
	editing
		ifTrue: [parentDialog ifNotNil: [:dialog | dialog editedProfile: profile]]
		ifFalse: [targetName := profile name.
			(IRCConnectionProfile hasProfileNamed: targetName)
				ifTrue: [^ self inform: 'That profile name is already taken.']
				ifFalse: [parentDialog addProfile: profile]].
	self topView delete