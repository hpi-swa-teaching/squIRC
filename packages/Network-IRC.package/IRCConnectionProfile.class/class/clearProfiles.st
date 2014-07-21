profile management
clearProfiles
	
	self lastSelectedProfile: self blank. 
	self profiles removeAll: (self profiles copy).
	self profileNamesSortedSetInvalid