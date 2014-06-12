accessing
selectedServer
	| servers |
	servers _ self serversDict at: self selectedGroup ifAbsent: [^nil].
	self selectedServerIndex = 0 ifTrue: [^nil].
	^servers at: self selectedServerIndex.
	
	"^selectedServer"
