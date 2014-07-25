testing support
tMessageFormat6
	| str msg |
	str := ':ip6UserType2!0:0:0:0:0:0:4.154.134.162 PRIVMSG #test :A message from another IP6 user
'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix = 'ip6UserType2!0:0:0:0:0:0:4.154.134.162'].
	self
		should: [msg command = 'privmsg'].
	self
		shouldnt: [msg isLocal].
	self
		should: [msg arguments size = 2].
	self
		should: [msg arguments first = '#test'].
	self
		should: [msg arguments last = 'A message from another IP6 user']