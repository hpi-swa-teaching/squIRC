as yet unclassified
selectedServerAddress
	| server port |
	server _ self selectedServer.
	server isNil
		ifTrue: [^ self noServerAddress].
	port _ self selectedPort.
	^port isNil
		ifTrue: [server address]
		ifFalse: [server address,':', port printString]