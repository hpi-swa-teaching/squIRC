as yet unclassified
portList
	| server |
	self selectedGroupIndex = 0
		ifTrue: [^ #()].
	self selectedServerIndex = 0
		ifTrue: [^ #()].
	server _ self selectedServer.
	^ server ports collect: [:x | x asString]