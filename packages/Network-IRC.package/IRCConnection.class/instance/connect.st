network IO
connect
	"connect to a server"
	| success |
	success := self connectToSever.
	success
		ifFalse: [^ false].
	self
		sendMessage: (IRCProtocolMessage fromString: 'NICK ' , self nick).
	self
		sendMessage: (IRCProtocolMessage fromString: 'USER ' , self userName , ' * * :' , self fullName).
	^ success