as yet unclassified
createDefault
	| model server |
	model := self new.
	server := IRCServer serverWithAddress: self defaultServer.
	model nick: self defaultNick;
		 fullName: self defaultFullName;
		 userName: self defaultUserName;
		 server: server;
		 options: IRCOptionsManagement savedOptions.
	model name: self defaultProfileName.
	self updateProfileNamed: self defaultProfileName with: model.
	^ model