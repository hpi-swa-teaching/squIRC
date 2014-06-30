current profile
serverAsString: aString
	
	self currentProfile 
					server: (IRCServer fromString: aString asString)