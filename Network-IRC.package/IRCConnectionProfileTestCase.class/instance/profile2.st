set up
profile2
	| profile |
	profile := IRCConnectionProfile new.
	profile fullName: 'profile2 <profile2@squeak.org>';
		 name: 'profile number two';
		 nick: 'prof2';
		 server: self server1;
		 userName: 'prof2';
		 options: IRCOptionsManagement savedOptions.
	^ profile