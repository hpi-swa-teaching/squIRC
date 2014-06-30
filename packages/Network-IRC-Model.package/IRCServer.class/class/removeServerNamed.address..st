servers
removeServerNamed: aString address: addString 
	| found |
	found := self findServerNamed: aString address: addString..
	found isNil
		ifFalse: [self removeServer: found]