network IO
processIO
	"do as much network IO as is immediately possible"
	"do nothing if the socket isn't ready for work"
	"THIS IS A POLLING LOOP DRIVEN BY MORPHIC'S STEP ENGINE."
	self updateConnectStatus.
	self checkSocketStatusFromPollingLoop
		ifFalse: [^ self].
	
	self sendMessagesToSocket.
	self receiveMessagesFromSocket