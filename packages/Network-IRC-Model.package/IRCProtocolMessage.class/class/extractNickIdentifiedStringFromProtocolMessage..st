extracted
extractNickIdentifiedStringFromProtocolMessage: aMessage 
	| stream array |
	stream := ReadWriteStream on: ''.
	array := aMessage arguments.
	stream
		nextPutAll: (array at: 3).
	^ stream contents