private
sendMessage: aMessage 
	| amount buffer |
	buffer := aMessage asString squeakToIso.
	[buffer isEmpty]
		whileFalse: [amount := self socket sendSomeData: buffer.
			buffer := buffer copyFrom: amount + 1 to: buffer size]