as yet unclassified
testClassSpecificLog
	| mainDir errorsDir fStream |
	IRCErrorLog log: self message forClass: self class.
	mainDir := FileDirectory default directoryNamed: 'irc'.
	self
		should: [mainDir directoryExists: 'errors'].
	errorsDir := mainDir directoryNamed: 'errors'.
	self
		should: [errorsDir fileExists: self class name, '.txt'].
	[fStream := errorsDir oldFileNamed: self class name, '.txt'.
	self
		should: [fStream contents includesSubString: self message]]
		ensure: [fStream close]