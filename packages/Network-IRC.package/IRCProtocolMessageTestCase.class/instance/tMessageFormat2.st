testing support
tMessageFormat2
	| str msg |
	str := ':waterie!~waterie@c-62-100-16-75.client.nonecast.net PRIVMSG #squeak :yeah, lots of new faces. so what have you been up to?
'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix = 'waterie!~waterie@c-62-100-16-75.client.nonecast.net'].
	self
		should: [msg command = 'privmsg'].
	self
		shouldnt: [msg isLocal].
	self
		should: [msg arguments size = 2].
	self
		should: [msg arguments first = '#squeak'].
	self
		should: [msg arguments last = 'yeah, lots of new faces. so what have you been up to?']