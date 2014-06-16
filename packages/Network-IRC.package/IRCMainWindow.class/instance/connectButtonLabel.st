actionButtons
connectButtonLabel

	^self connected
			ifTrue: ['disconnect']
			ifFalse: ['connect']