profiles
addProfile: anIRCProfile 
	(self profiles includesKey: anIRCProfile name)
		ifTrue: [^ self inform: 'Profile "' , anIRCProfile name , '" already defined.'].
	self profiles at: anIRCProfile name put: anIRCProfile