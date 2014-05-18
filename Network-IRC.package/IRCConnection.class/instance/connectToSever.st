network IO
connectToSever
	"Connect to a server. Answers true/false"
	| addr |
	Socket initializeNetwork.
	socket
		ifNotNil: [socket destroy].
	self reset.
	addr := NetNameResolver addressForName: (self server).
	addr
		ifNil: [^ false].
	socket := Socket new.
	socket connectTo: addr port: (self port).
	^ true