extracted
extractWhoIsUserStringFromProtocolMessage: aMessage 
	| stream array |
	stream := ReadWriteStream on: ''.
	array := aMessage arguments.
	stream
		nextPutAll: (array at: 2);
		 nextPutAll: ' is ';
		
		nextPutAll: (array at: 3);
		 nextPut: $@;
		
		nextPutAll: (array at: 4);
		 nextPutAll: ' (';
		
		nextPutAll: (array at: 6);
		 nextPut: $).
	^ stream contents