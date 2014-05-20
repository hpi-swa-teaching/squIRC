channel logs
ensuredLogFilePathForServerAddress: serverAddressString channelName: channelNameString 
	"We do not open a stream on the path, we just answer the path and  
	made sure it is valid."

	| dir fName path |
	dir := self folderForChannelLogsOnServerAddress: serverAddressString.
	fName := dir checkName: channelNameString , '.txt' fixErrors: true.
	path := dir fullPathFor: fName.
	^path