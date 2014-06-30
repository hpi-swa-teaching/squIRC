as yet unclassified
channelListDownloadCompleted
	refreshButton isNil
		ifTrue: [^ nil].
	refreshButton offColor: IRCClientColors channelListIdle;
		 label: self channelListDownloadButtonTag.
	self saveChannelList.
	self changed.
	self topView isNil
		ifFalse: [self topView activate]