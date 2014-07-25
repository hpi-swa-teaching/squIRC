string representation
asString
|string|

	(self isValid)
		ifTrue: [string := self address, ':' ,self port.
				self serverName
					ifNil: 	 [^string]
					ifNotNil: [^self serverName, '=', string]]
		ifFalse: [^'']
	