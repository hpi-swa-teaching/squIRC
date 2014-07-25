string representation
asString
|string|

	string := self address, ':' ,self port.
	self serverName
		ifNil: 	 [^string]
		ifNotNil: [^self serverName, '=', string]