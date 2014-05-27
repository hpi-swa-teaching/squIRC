current profile
serverAsString: aString
	
	self currentProfile 
					server: (IRCServer from: aString asString)