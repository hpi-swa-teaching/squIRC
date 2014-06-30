extracted
extractIdleTimeStringFromProtocolMessage: aMessage 
	| stream array idleTime |
	stream := ReadWriteStream on: ''.
	array := aMessage arguments.
	idleTime := Time fromSeconds: (array at: 3) asNumber.
	stream
		nextPutAll: (array at: 2);
		 nextPutAll: ' has'.
	idleTime hours > 0
		ifTrue: [stream nextPutAll: ' ' , idleTime hours printString , ' hour'.
			idleTime hours > 1
				ifTrue: [stream nextPut: $s]].
	idleTime minutes > 0
		ifTrue: [stream nextPutAll: ' ' , idleTime minutes printString , ' minute'.
			idleTime minutes > 1
				ifTrue: [stream nextPut: $s]].
	idleTime seconds > 0
		ifTrue: [stream nextPutAll: ' ' , idleTime seconds printString , ' second'.
			idleTime seconds > 1
				ifTrue: [stream nextPut: $s]].
	stream nextPutAll: ' idle time'.
	^ stream contents