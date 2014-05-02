profiles
updateProfilesList
	| listM |
	listM := self myDependents
				detect: [:dep | dep externalName = 'theProfilesList']
				ifNone: [].
	listM isNil
		ifFalse: [
			listM changed]