profile management
removeProfileNamed: aName
	
	self profiles removeAllSuchThat: [:candidate | candidate equalsName: aName]