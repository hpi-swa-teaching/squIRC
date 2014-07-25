testing support
tMessageFormat8
	| str msg |
	str := 'NICK fastfingers'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix isNil].
	self
		should: [msg command = 'nick'].
	self
		should: [msg arguments size = 1].
	self
		should: [msg arguments first = 'fastfingers']