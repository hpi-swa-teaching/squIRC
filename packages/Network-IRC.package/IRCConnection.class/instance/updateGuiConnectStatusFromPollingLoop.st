network IO
updateGuiConnectStatusFromPollingLoop

	self changed: #connected.
	"gui isNil
		ifFalse: [self connected
				ifTrue: [gui updateButtonNamed: 'connect' newTag: 'disconnect']
				ifFalse: [gui updateButtonNamed: 'connect' newTag: 'connect']]."
