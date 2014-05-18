parse mIRC entries
configureFromString: aString 
	|currStrings tempservname|
	currStrings := aString subStrings: '='.
	currStrings size = 1
		ifTrue: [tempservname:= nil.
					currStrings := (currStrings at: 1) subStrings: ':']
		ifFalse: [currStrings size = 2 
							ifTrue: [tempservname:= (currStrings at: 1).
										currStrings := (currStrings at: 2) subStrings: ':']
		].		
	currStrings size = 2
		ifFalse: [^nil]. "COMPLAIN"
		
		self serverName: tempservname.
		self address: (currStrings at: 1).
		self port: (currStrings at: 2).
		self ports: {self port}.
		self group: self class userDefinedServersGroup.