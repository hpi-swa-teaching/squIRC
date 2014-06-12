extracted
extractWhoIsServerStringFromProtocolMessage: aMessage 
	| stream array |
	stream := ReadWriteStream on: ''.
	array := aMessage arguments.
	stream nextPutAll: 'on irc via server ';
		
		nextPutAll: (array at: 3);
		 nextPutAll: ' (';
		
		nextPutAll: (array at: 4);
		 nextPut: $).
	^ stream contents