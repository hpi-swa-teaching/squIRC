printing
printOn: aStream 
	super printOn: aStream.
	aStream
		cr;
		nextPutAll: '  ';
		nextPutAll: 'Group: ';
		nextPutAll: self group asString;
		cr;
		nextPutAll: '  ';
		nextPutAll: 'Name: ';
		nextPutAll: self serverName asString;
		cr;
		nextPutAll: '  ';
		nextPutAll: 'Addr: ';
		nextPutAll: self address asString.
	self ports do: [:each |
		aStream
			cr;
			nextPutAll: '    Port: ';
			nextPutAll: each printString]