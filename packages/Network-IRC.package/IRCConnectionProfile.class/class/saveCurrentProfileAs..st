current profile
saveCurrentProfileAs: aName

	self addProfile: (self copy: (self currentProfile) name: aName)