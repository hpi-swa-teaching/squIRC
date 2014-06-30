accessing
userIndex: anInteger
	"change which user is selected"
	
	userIndex := anInteger.
	self changed: #userIndex.