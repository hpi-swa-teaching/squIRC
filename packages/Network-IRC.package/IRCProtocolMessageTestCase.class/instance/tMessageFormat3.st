testing support
tMessageFormat3
	| str msg |
	str := ':fast48!~sbw@ip68-96-102-103.om.foo.cox.foo PART #squeak :"Using Squeak IRC Client. (See http://www.squeak.org)"
'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix = 'fast48!~sbw@ip68-96-102-103.om.foo.cox.foo'].
	self
		should: [msg command = 'part'].
	self
		should: [msg arguments size = 2].
	self
		should: [msg arguments first = '#squeak'].
	self
		should: [msg arguments last = '"Using Squeak IRC Client. (See http://www.squeak.org)"']