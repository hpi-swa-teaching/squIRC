private-initialization
prefix: aString command: anotherString arguments: aCollection 
	prefix := aString.
	command := anotherString asIRCLowercase.
	arguments := aCollection.
	self checkForSpecialCommandHandling;
		yourself.
	
