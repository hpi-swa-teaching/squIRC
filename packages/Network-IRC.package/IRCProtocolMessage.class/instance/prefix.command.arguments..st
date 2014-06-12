private-initialization
prefix: aString command: anotherString arguments: aCollection 
	prefix := aString.
	command := anotherString asIRCLowercase.
	arguments := aCollection.
	self checkForCommandHandling.
	self checkForLocalCommandHandling.
	self checkForSpecialCommandHandling.
