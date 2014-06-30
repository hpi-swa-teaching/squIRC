network IO
networkTextConverter

	^networkTextConverter 
		ifNil: [networkTextConverter := UTF8TextConverter new]