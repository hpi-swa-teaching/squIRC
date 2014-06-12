private
disconnectAsServer
	self socket isNil ifTrue: [^self].
	self socket isValid
		ifTrue: [self socket close].
	self socket: nil