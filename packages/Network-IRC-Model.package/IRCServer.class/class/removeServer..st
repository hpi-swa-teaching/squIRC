servers
removeServer: anIRCServer 
	self servers
		removeKey: anIRCServer key
		ifAbsent: []