instance creation
fromConnection: anIRCConnectionEnhanced 
	| model server |
	model := self new.
	server := IRCServer serverWithAddress: anIRCConnectionEnhanced server.
	server isNil
		ifTrue: [server := IRCServer defaultServer]
		ifFalse: [server port: anIRCConnectionEnhanced port].
	model nick: anIRCConnectionEnhanced nick;
		 fullName: anIRCConnectionEnhanced fullName;
		 userName: anIRCConnectionEnhanced userName;
		 server: server;
		 options: IRCOptionsManagement savedOptions.
	^ model