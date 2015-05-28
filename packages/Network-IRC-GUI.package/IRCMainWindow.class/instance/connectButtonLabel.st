actionButtons
connectButtonLabel

	^self connected | self currentlyConnecting 
		ifTrue: ['disconnect']
		ifFalse: ['connect']