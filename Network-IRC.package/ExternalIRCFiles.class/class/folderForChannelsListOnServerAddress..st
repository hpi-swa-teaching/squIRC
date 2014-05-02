channels list
folderForChannelsListOnServerAddress: aString 
	| dir subFolderName |
	dir := self folderForServerAddress: aString.
	subFolderName := self channelsFolderName.
	(dir directoryExists: subFolderName)
		ifFalse: [dir createDirectory: subFolderName].
	^ dir directoryNamed: subFolderName