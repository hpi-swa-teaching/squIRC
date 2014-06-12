accessing
profileNamesSorted 

	self profileNamesSortedValid
		ifFalse: [ProfilesSorted := (self profiles 
						asSortedCollection: [:a :b | 
								a name asLowercase < b name asLowercase])
						collect: [:profile | profile name].
					 self profileNamesSortedSetValid].
	^ProfilesSorted
	
	