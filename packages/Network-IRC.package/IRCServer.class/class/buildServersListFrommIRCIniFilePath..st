servers
buildServersListFrommIRCIniFilePath: aString 
	"Populate the available servers class var using an mIRC servers.ini file  
	for food. The file is found via <aString>."
	| fileStream |
	fileStream := FileStream readOnlyFileNamed: aString.
	fileStream isNil
		ifTrue: [^ nil].
	self buildServersListFrommIRCIniStream: fileStream