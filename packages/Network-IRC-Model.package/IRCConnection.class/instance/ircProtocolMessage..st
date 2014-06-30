naval mode
ircProtocolMessage: msg 
	"a new message. log it on the console, unless it's a channel listing"
	(msg command ~= IRCMessagePattern RPLList printString
			and: [msg command ~= IRCMessagePattern RPLMotd])
		ifTrue: [self addToConsole: msg asString]