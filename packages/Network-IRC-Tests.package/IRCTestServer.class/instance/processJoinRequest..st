responses
processJoinRequest: anIRCProtocolMessage 
	| string channelName |
	channelName := anIRCProtocolMessage arguments first.
	string := ':' , nickEncountered , '!~xyz@' , NetNameResolver localAddressString , ' JOIN '.
	channelName.
	"self sendStringAsProtocolMessage: string."
	string := ':' , self serverAddress , ' 332 ' , nickEncountered , ' ' , channelName , ' :10If at first you don''t succeed, you will never succeed'.
	self sendStringAsProtocolMessage: string.
	string := ':' , self serverAddress , ' 333 ' , nickEncountered , ' ' , channelName , ' iph656207 1086184773'.
	self sendStringAsProtocolMessage: string.
	string := ':' , self serverAddress , ' 353 ' , nickEncountered , ' = ' , channelName , ' :' , nickEncountered , ' @Dragos[69] @^-Hell-^ @LinuxBox @Spoon-ZaSLUT @Andreutza @Spoon-ZaPIMP @Spoon_ @LimpBot'.
	self sendStringAsProtocolMessage: string.
	string := ':' , self serverAddress , ' 366 ' , nickEncountered , ' ' , channelName , ' :End of /NAMES list.'.
	self sendStringAsProtocolMessage: string