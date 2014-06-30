profile management
addProfile: aProfile
	"adds aProfile to the the profile list 
		but refuses to do so, if a profile 
		of the same name already exists"

	self profiles 
			detect: [:candidate | candidate equalsByName: aProfile]
			ifFound: [:targetProfile | 
						 self inform: 'Profile "' , 
										  aProfile name , 
										  '" is already defined.']
			ifNone: 	[self profiles add: aProfile.
						 self profileNamesSortedSetInvalid].