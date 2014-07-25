testing support
initProfileA

	^(IRCConnectionProfile blank)
		name: 'ProfileA';
		fullName: 'User A';
		nick: 'a';
		userName: 'ua';
		server: (IRCServer fromString: 'irc.freenode.net:6667');
		yourself