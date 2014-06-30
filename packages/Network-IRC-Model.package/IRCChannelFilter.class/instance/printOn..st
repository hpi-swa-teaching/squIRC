printing
printOn: aStream 
	super printOn: aStream.
	aStream cr; nextPutAll: '  name: ' , self doName printString.
	self doName
		ifTrue: [aStream nextPutAll: '  "' , self nameFilter , '"'].
	aStream cr; nextPutAll: '  topic: ' , self doTopic printString.
	self doTopic
		ifTrue: [aStream nextPutAll: '  "' , self topicFilter , '"']