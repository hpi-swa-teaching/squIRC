private
logStreamNamed: logName existsIn: aDirectory 
	"This creates the loog file if required.  Always answers the file stream."
	^ (aDirectory fileExists: logName)
		ifTrue: [aDirectory oldFileNamed: logName]
		ifFalse: [aDirectory newFileNamed: logName]