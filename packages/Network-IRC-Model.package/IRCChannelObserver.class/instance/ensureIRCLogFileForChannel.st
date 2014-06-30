logging
ensureIRCLogFileForChannel
	| path |
	path := ExternalIRCFiles ensuredLogFilePathForServerAddress: connection server channelName: self channelNameWithoutSymbol.
	logFile := CrLfFileStream fileNamed: path