set up
serverFromMIRC
	| line server |
	line := 'n16=Alternativenet: Random serverSERVER:irc.altnet.org:6667GROUP:Alternativenet'.
	server := IRCServer fromMIRCLine: line.
	^server
