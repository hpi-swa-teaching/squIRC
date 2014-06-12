responses
processUserRequest: anIRCProtocolMessage 
	nickEncountered isNil
		ifTrue: [^ self inform: 'NICK was not received first.'].
	self sendStringAsProtocolMessage:'NOTICE AUTH :*** Looking up your hostname...'.
	self sendStringAsProtocolMessage: 'NOTICE AUTH :*** Found your hostname, welcome back'.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 001 ' , nickEncountered , ' :Welcome to the local host testing server ' , nickEncountered.
	self sendStringAsProtocolMessage: ':' , self serverAddress , ' 005 ' , nickEncountered , ' MODES=4 CHANLIMIT=#:20 NICKLEN=16 USERLEN=10 HOSTLEN=63 TOPICLEN=450 KICKLEN=450 CHANNELLEN=30 KEYLEN=23 CHANTYPES=# PREFIX=(ov)@+ CASEMAPPING=ascii CAPAB IRCD=dancer :are available on this server'.