actionButtons
connectButtonLabel

	self currentlyConnecting 
		ifTrue: [^'connecting...'].

	^self connected
		ifTrue: ['disconnect']
		ifFalse: ['connect']