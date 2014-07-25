testing support
tMessageFormat7
	| str msg |
	str := ':ip6UserType3!0:0:0:0:0:FFFF:4.154.23.9 PRIVMSG #test :A message from yet another IP6 user
'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix = 'ip6UserType3!0:0:0:0:0:FFFF:4.154.23.9'].
	self
		should: [msg command = 'privmsg'].
	self
		should: [msg arguments size = 2].
	self
		should: [msg arguments first = '#test'].
	self
		should: [msg arguments last = 'A message from yet another IP6 user']