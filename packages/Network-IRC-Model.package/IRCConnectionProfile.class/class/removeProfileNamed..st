profile management
removeProfileNamed: aName
	
	self profiles 
			removeAllSuchThat: [:candidate | candidate equalsName: aName].
	(self lastSelectedProfile equalsName: aName)
			ifTrue: [self lastSelectedProfile: nil].
	self profileNamesSortedSetInvalid