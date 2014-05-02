logging
logChannelTraffic: aText 
	self logFile.
	logFile closed
		ifTrue: [logFile reopen; setToEnd].
	logFile nextPutAll: '[' , DateAndTime current printString , '] ';
		 nextPutAll: aText asString;
		 flush