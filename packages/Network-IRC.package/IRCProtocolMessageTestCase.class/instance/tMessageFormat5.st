testing support
tMessageFormat5
	| str msg |
	str := ':ip6UserType1!1:2:3:A;5:6:B:8 PRIVMSG #test :A message from an IP6 user
'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix = 'ip6UserType1!1:2:3:A;5:6:B:8'].
	self
		should: [msg command = 'privmsg'].
	self
		should: [msg arguments size = 2].
	self
		should: [msg arguments first = '#test'].
	self
		should: [msg arguments last = 'A message from an IP6 user']