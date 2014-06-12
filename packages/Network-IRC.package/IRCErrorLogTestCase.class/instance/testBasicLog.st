as yet unclassified
testBasicLog

	| mainDir errorsDir fStream |
	IRCErrorLog log: self message.
	mainDir := FileDirectory default directoryNamed: 'irc'.
	self
		should: [mainDir directoryExists: 'errors'].
	errorsDir := mainDir directoryNamed: 'errors'.
	self
		should: [errorsDir fileExists: IRCErrorLog defaultLogName].
	[fStream := errorsDir oldFileNamed: IRCErrorLog defaultLogName.
	self should: [fStream contents includesSubString: self message]
		]
		ensure: [fStream close]