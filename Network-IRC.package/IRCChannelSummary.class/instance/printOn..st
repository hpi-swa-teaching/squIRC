printing
printOn: aStream
	aStream nextPutAll: self class name;
	space;
	 nextPutAll: self name;
	 nextPutAll: ' (';
	 nextPutAll: numUsers printString;
	 nextPutAll: ')'; cr