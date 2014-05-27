profile management
getProfileNamed: aName
	
	^self profiles detect: [:candidate | candidate equalsName: aName]
					ifNone: [nil]