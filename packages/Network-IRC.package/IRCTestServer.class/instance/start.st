API
start
	self run: true.
	[self connectAsServer; waitForFirstConnectAndStartLooping]
		forkAt: Processor userBackgroundPriority
		named: self forkedProcessName.
	^ self forkedProcessName