profiles
removeProfileNamed: aString 
	"Never remove default profile."
	aString = self defaultProfileName ifTrue: [^nil].
	(self profiles includesKey: aString)
		ifFalse: [^ self inform: 'Profile "' , aString , '" does not exist.'].
	self profiles removeKey: aString