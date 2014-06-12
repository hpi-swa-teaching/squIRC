as yet unclassified
selectedPort
	| server |
	self selectedGroupIndex = 0
		ifTrue: [^ nil].
	self selectedServerIndex = 0
		ifTrue: [^ nil].
	self selectedPortIndex = 0
		ifTrue: [^nil].
	server _ self selectedServer.
	^ server ports at: self selectedPortIndex