testing support
tMessageFormat1
	| str msg |
	str := ':jeff907!Ailicex@24.154.34.53 PRIVMSG #squeak :long story
'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix = 'jeff907!Ailicex@24.154.34.53'].
	self
		should: [msg command = 'privmsg'].
	self
		should: [msg arguments size = 2].
	self
		should: [msg arguments first = '#squeak'].
	self
		should: [msg arguments last = 'long story']