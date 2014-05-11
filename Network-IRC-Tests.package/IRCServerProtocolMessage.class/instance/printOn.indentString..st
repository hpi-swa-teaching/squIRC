as yet unclassified
printOn: stream indentString: indent 
	timestamp isNil
		ifFalse: [stream cr; nextPutAll: indent;
				 nextPutAll: timestamp printString].
	self serverAddress isNil
		ifFalse: [stream cr; nextPutAll: indent;
				 nextPutAll: 'Server Address: ';
				 nextPutAll: self serverAddress].
	self port isNil
		ifFalse: [stream cr; nextPutAll: indent;
				 nextPutAll: 'Server Port: ';
				 nextPutAll: self port printString].
	super printOn: stream indentString: indent