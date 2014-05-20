connect indicator
updateIndicator
	| morph |
	morph := self submorphNamed: 'indicator'.
	morph
		newForm: (model connected
				ifTrue: [self scaledConnectedForm]
				ifFalse: [self scaledDisconnectedForm])