string representation
profileString
	| stream |
	stream _ ReadWriteStream on: ''.
	stream nextPut: $";
		 nextPutAll: self serverName asString;
		 nextPut: $";
		 nextPutAll: '  ';
		 nextPutAll: self profileListString contents.
	^ stream contents