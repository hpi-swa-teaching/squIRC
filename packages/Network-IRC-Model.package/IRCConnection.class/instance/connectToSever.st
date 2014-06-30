network IO
connectToSever
	| addr |
	
	Socket initializeNetwork.
	self socket ifNotNil: [self socket destroy].
	self reset.
	
	addr := NetNameResolver addressForName: (self server address).
	addr ifNil: [^ false].
	
	self socket: Socket new.
	self socket connectTo: addr port: (self port).
	^self socket isConnected
