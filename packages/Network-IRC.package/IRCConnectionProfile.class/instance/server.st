as yet unclassified
server
	server = nil ifTrue: [server _ IRCServer defaultServer].
	^server