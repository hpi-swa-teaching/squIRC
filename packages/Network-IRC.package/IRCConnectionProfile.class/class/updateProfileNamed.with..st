profile management
updateProfileNamed: aName with: aProfile
	"tries to find a profile with aName 
		and set its properties according to aProfile
		if there is no matching profile,
		a new Profile with the respective properties is inserted"
	
	self profiles 
			detect: [:candidate | candidate equalsName: aName]
			ifFound: [:targetProfile | 
								targetProfile copyPropertiesFrom: aProfile]
			ifNone: [self profiles 
								add: (self copy: aProfile name: aName)].
	self profileNamesSortedSetInvalid