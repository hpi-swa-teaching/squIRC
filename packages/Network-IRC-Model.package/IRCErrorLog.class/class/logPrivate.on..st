private
logPrivate: aString on: fStream 
	fStream setToEnd.
	fStream nextPutAll: '[' , DateAndTime current printString , '] ';
		 nextPutAll: aString;
		 cr;
		 flush