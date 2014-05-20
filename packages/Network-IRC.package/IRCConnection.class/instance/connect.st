network IO
connect
	"connect to a server"
	| success |
	success := self connectToSever.
	success
		ifFalse: [^ false].
	self
		sendMessage: (IRCProtocolMessage fromString: 'NICK ' , nick).
	self
		sendMessage: (IRCProtocolMessage fromString: 'USER ' , userName , ' * * :' , fullName).
	^ success