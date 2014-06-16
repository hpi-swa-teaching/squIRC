profiles
fixAllBadProfileKeys
	"Ensure that the keys we are using are the same their profile name.  
	Assume that the profile name is the correct one if they differ."
	(self profiles
		collect: [:each | each name])
		do: [:pName | self checkKeyForProfileNamed: pName]