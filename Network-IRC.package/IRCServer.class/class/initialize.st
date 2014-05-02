class initialization
initialize
	"Trap change in shape."
	self servers class = Dictionary
		ifFalse: [self convertServers]