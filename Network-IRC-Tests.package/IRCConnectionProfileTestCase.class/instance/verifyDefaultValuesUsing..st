testing support
verifyDefaultValuesUsing: profile
	self
		should: [profile name = 'Default Profile'];
		
		should: [profile fullName = 'fullName < mailname@mailsite.ext >'];
		
		should: [profile nick = 'channelNickname'];
		
		should: [profile server port = 6667];
		
		should: [profile server address = 'irc.freenode.net'];
		
		should: [profile userName = 'userName']