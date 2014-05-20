responses
processListRequest: anIRCProtocolMessage 
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 321 ' , nickEncountered , ' Channel :Users  Name'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 322 ' , nickEncountered , ' #test 1 : '.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 322 ' , nickEncountered , ' #moreFolks 16 : '.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 322 ' , nickEncountered , ' #topicHere 212 :Topic line'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 322 ' , nickEncountered , ' #longTopic 3 :This is an example of a really long topic line having many characters of text but no built-in http stuff nor mirc color codes'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 322 ' , nickEncountered , ' #complexTopic 6 :9(ø`á.üü.-> 3Your source for 9PRE 2000 games 3and the biggest 9Classic Games Trivia 3on IRC! - 9!ReadME, !list'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 323 ' , nickEncountered , ' :End of /LIST'.
	