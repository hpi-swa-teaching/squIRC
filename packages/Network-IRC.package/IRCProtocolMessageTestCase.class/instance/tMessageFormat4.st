testing support
tMessageFormat4
	| str msg |
	str := ':calvino.freenode.net 323 fast48 :End of /LIST
'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix = 'calvino.freenode.net'].
	self
		should: [msg command = '323'].
	self
		shouldnt: [msg isLocal].
	self
		should: [msg arguments size = 2].
	self
		should: [msg arguments first = 'fast48'].
	self
		should: [msg arguments last = 'End of /LIST']