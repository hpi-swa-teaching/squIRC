tests
testMessageLowLevelQuoting
	| stream string result pieces index reconverted |
	pieces _ {'This is a test'. 'that should have been a null'. 'and that should have been a line-feed'. 'and that should be a carriage-return'. 'and that should have been a control-P.'}.
	stream _ WriteStream on: ''.
	stream nextPutAll: pieces first;
		
		nextPut: (Character value: 0);
		 nextPutAll: pieces second;
		
		nextPut: (Character value: 10);
		 nextPutAll: pieces third;
		
		nextPut: (Character value: 13);
		 nextPutAll: pieces fourth;
		
		nextPut: (Character value: 16);
		 nextPutAll: pieces fifth.
	string _ stream contents.
	result _ IRCProtocolMessage lowQuote: string.
	self
		should: [result size = (string size + 4)].
	index _ pieces first size + 1.
	self
		should: [(result at: index)
				= (Character value: 16)].
	index _ index + 1.
	self
		should: [(result at: index)
				= $0].
	index _ index + pieces second size + 1.
	self
		should: [(result at: index)
				= (Character value: 16)].
	index _ index + 1.
	self
		should: [(result at: index)
				= $n].
	index _ index + pieces third size + 1.
	self
		should: [(result at: index)
				= (Character value: 16)].
	index _ index + 1.
	self
		should: [(result at: index)
				= $r].
	index _ index + pieces fourth size + 1.
	self
		should: [(result at: index)
				= (Character value: 16)].
	index _ index + 1.
	self
		should: [(result at: index)
				= (Character value: 16)].
	reconverted _ IRCProtocolMessage lowDequote: result.
	self
		should: [reconverted = string]