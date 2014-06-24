network IO
protocolMessageQueueRemove
	
	self protocolMessageQueue isEmpty ifTrue: [^nil].
	^self protocolMessageQueue removeFirst 