set up
server1
	| string server |
	string := 'n16=Alternativenet: Random serverSERVER:irc.altnet.org:6667GROUP:Alternativenet'.
	server := IRCServer from: string.
	^server
