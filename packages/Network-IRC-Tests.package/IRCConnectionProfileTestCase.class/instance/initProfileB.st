testing support
initProfileB
	
	^(IRCConnectionProfile blank)
		name: 'ProfileB';
		fullName: 'User B';
		nick: 'b';
		userName: 'ub';
		server: (IRCServer fromString: 'irc.freenode.net:6667');
		yourself