logging
logFile
	logFile == nil
		ifTrue: [self ensureIRCLogFileForChannel].
	^ logFile