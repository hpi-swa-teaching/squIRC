as yet unclassified
saveChannelList
	| dir fStream fName |
	(IRCOptionsManagement option: #saveChannelLists)
		ifFalse: [^ self].
	dir := ExternalIRCFiles folderForChannelsListOnServerAddress: connection server.
	fName := 'channel.list.txt'.
	[fStream := dir forceNewFileNamed: fName.
	self saveChannelListOn: fStream named: fName]
		ensure: [fStream close]