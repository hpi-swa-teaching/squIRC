channel logs
folderForChannelLogsOnServerAddress: aString 
	| dir subFolderName |
	dir := self folderForServerAddress: aString.
	subFolderName := self logsFolderName.
	(dir directoryExists: subFolderName) 
		ifFalse: [dir createDirectory: subFolderName].
	^dir directoryNamed: subFolderName