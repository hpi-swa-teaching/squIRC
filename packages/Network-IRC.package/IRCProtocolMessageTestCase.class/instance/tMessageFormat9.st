testing support
tMessageFormat9
	| str msg |
	str := 'USER sbw * * :Stephan B. Wessels <swessels@cox.net>'.
	msg := IRCProtocolMessage fromString: str.
	self
		should: [msg prefix isNil].
	self
		should: [msg command = 'user'].
	self
		should: [msg arguments size = 4].
	self
		should: [(msg arguments at: 1)
				= 'sbw'].
	self
		should: [(msg arguments at: 2)
				= '*'].
	self
		should: [(msg arguments at: 3)
				= '*'].
	self
		should: [(msg arguments at: 4)
				= 'Stephan B. Wessels <swessels@cox.net>']