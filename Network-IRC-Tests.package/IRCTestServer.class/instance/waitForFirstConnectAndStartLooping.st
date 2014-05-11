private
waitForFirstConnectAndStartLooping
	| success |
	success := self socket waitForConnectionFor: 240.
	success isNil
		ifTrue: [self run: false.
			^ self inform: 'IRC Test Server timed out waiting for a connection.'].
	self waitingForConnection: false.
	nickEncountered := nil.
	self loop