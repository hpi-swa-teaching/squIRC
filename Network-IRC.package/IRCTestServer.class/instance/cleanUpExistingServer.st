private
cleanUpExistingServer
	self socket isNil ifFalse: [self disconnectAsServer]