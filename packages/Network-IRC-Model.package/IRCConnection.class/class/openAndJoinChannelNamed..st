instance creation
openAndJoinChannelNamed: aString 
	| connection channelName |
	connection _ self new.
	connection openWindows.
	connection connect.
	(aString beginsWith: '#')
		ifTrue: [channelName _ aString]
		ifFalse: [(IRCOptionsManagement option: #forceChannelsToHaveLeadingPoundSign)
				ifTrue: [channelName _ '#' , aString]].
	connection openChannelCaptured: channelName.
	^ connection