action buttons
okaySelected
	| targetName |
	
	self changed: #accept.
	editing
		ifTrue: [	parentDialog ifNotNil: [:dialog | dialog editedProfile: profile]]
		ifFalse: [targetName := profile name. 
				targetName ifNil: [^self inform: 'Your profile needs a name.'].
				(IRCConnectionProfile hasProfileNamed: targetName)
					ifTrue: [^ self inform: 'That profile name is already taken.']
					ifFalse: [parentDialog addProfile: self profile]].
	mainWin swapper closeFrontPane