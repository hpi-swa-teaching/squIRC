network IO
connect
	self connectToSever ifFalse: [^ false].
	self
		sendMessage: (IRCProtocolMessage fromString: 'NICK ' , self nick).
	self
		sendMessage: (IRCProtocolMessage fromString: 'USER ' , self userName , ' * * :' , self fullName).
	^true
