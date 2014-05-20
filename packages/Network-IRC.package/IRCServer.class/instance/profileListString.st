printing
profileListString
	| stream |
	stream _ ReadWriteStream on: ''.
	stream 
		 nextPutAll: self address asString;
		 nextPutAll: ':';
		 nextPutAll: self port printString.
	^ stream contents