profiles
getProfileNamed: aString 
	(self profiles includesKey: aString)
		ifFalse: [^ nil].
	^ self profiles at: aString