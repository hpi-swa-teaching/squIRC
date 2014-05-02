channel pane text
addTextToChannelPane: aString 
	| stringToAppend |
	stringToAppend := (IRCOptionsManagement option: #timeStampMessages)
				ifTrue: [self prependTimeStampToChannelMessage: aString]
				ifFalse: [aString].
	(IRCOptionsManagement option: #logChannelTraffic)
		ifTrue: [self logChannelTraffic: stringToAppend].
	(IRCOptionsManagement option: #usemIRCColors)
				ifTrue: [stringToAppend := self class convertTextUsingMIRCColors: stringToAppend].
	chatTextLines add: stringToAppend.
	self changed: #chatText.
	connection gui possibleTabStateChange: self channelName