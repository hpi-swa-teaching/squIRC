UI
openChannelList
	"open a view on the list of channels"
	self channelsBrowser isNil
		ifTrue: [self
				channelsBrowser: (IRCChannelListBrowser openForCaptiveConnection: self)]
		ifFalse: [gui showPaneNamed: IRCChannelListBrowser tabbedPaneName]