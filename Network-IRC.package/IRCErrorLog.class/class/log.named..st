private
log: aString named: logName 
	| dir fName fStream |
	dir := ExternalIRCFiles errorsFolder.
	fName := logName , self logNameSuffix.
	[fStream := self logStreamNamed: fName existsIn: dir.
	self logPrivate: aString on: fStream]
		ensure: [fStream close]