extracted
extractWhoIsChannelsStringFromProtocolMessage: aMessage 
	| stream array |
	stream := ReadWriteStream on: ''.
	array := aMessage arguments.
	stream nextPutAll: 'on channels: ';
		
		nextPutAll: (array at: 3).
	^ stream contents