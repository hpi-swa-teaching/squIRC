responses
processMotdRequest: anIRCProtocolMessage 
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 375 ' , nickEncountered , ' :- ' , self serverAddress , ' Message of the Day -'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 372 ' , nickEncountered , ' :- 2004-5-19 15:14'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 372 ' , nickEncountered , ' :- Welcome to the IRC test server on ' , self serverAddress.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 372 ' , nickEncountered , ' :- '.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 372 ' , nickEncountered , ' :- Not much of a message, heh?'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 376 ' , nickEncountered , ' :End of /MOTD command.'