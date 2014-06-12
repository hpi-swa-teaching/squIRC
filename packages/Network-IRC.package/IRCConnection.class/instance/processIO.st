network IO
processIO
	"do as much network IO as is immediately possible"
	"do nothing if the socket isn't ready for work"
	"THIS IS A POLLING LOOP DRIVEN BY MORPHIC'S STEP ENGINE."
	self updateGuiConnectStatusFromPollingLoop.
	self checkSocketStatusFromPollingLoop
		ifFalse: [^ self].
	"first do sending"
	self emptyOutProtocolMessagesToSend.
	"now do receiving"
	self populateReceiveBufferFromPollingLoop