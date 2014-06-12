private
getSocketData
	[self socket dataAvailable]
		whileTrue: [self recieveBuffer: self recieveBuffer , socket receiveData isoToSqueak].
	^self socket isConnected