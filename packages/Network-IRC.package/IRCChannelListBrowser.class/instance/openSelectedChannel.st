open channel observer
openSelectedChannel
	| channelInfo channelName |
	channelInfo _ channelList
				at: multiColumnMorph getCurrentSelectionIndex
				ifAbsent: [^ self].
	channelName _ channelInfo name.
	channelMenuList add: channelName.
	self openChannelNamed: channelName