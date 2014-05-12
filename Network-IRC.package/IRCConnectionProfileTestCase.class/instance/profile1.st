set up
profile1
	| profile |
	profile := IRCConnectionProfile new.
	profile fullName: 'profile1 <profile1@squeak.org>';
		 name: 'profile name';
		 nick: 'profNick';
		 server: self server1;
		 userName: 'prof1';
		 options: IRCOptionsManagement savedOptions.
	^ profile