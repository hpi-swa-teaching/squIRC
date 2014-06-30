network IO
disconnect
	"disconnect from the server"
	socket
		ifNotNil: [socket isValid
				ifTrue: [
					socket close]].
	socket := nil.
	self topView isNil
		ifFalse: [self topView setLabel: IRCMainWindow baseWindowTitle]