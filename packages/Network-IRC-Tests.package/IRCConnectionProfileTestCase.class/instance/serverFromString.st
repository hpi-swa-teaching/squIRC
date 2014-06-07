set up
serverFromString
	| string server |
	string := 'TestServer=test.irc.net:6666'.
	server := IRCServer fromString: string.
	^server
