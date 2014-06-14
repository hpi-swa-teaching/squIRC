network IO
updateConnectStatus

	(connectedInLastLoop = self connected)
		ifFalse: [self changed: #connected].
	connectedInLastLoop := self connected
