private
connectAsServer
	Socket initializeNetwork.
	self socket
		ifNotNil: [self socket destroy].
	self socket: Socket new.
	self socket listenOn: self port.
	self waitingForConnection: true