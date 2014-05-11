responses
processWhoisRequest: anIRCProtocolMessage 
	| channelName nickToFind |
	channelName := anIRCProtocolMessage arguments first.
	nickToFind := anIRCProtocolMessage arguments second.
	self sendStringAsProtocolMessage: ':', self serverAddress, ' 311 ' , nickEncountered, ' ', nickToFind, ' ~user 209.53.205.45 * :Full User Name'.
	self sendStringAsProtocolMessage: ':', self serverAddress, ' 319 ' , nickEncountered, ' ', nickToFind, ' :', channelName.
	self sendStringAsProtocolMessage: ':', self serverAddress, ' 312 ' , nickEncountered, ' ', nickToFind, ' irc.freenode.net :http://freenode.net/'.
	self sendStringAsProtocolMessage: ':', self serverAddress, ' 317 ' , nickEncountered, ' ', nickToFind, ' 88 1086188160 :seconds idle, signon time'.
	self sendStringAsProtocolMessage: ':', self serverAddress, ' 318 ' , nickEncountered, ' ', nickToFind, ' :End of /WHOIS list.'.