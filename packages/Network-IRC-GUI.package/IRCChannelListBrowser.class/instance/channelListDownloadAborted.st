as yet unclassified
channelListDownloadAborted
	refreshButton isNil
		ifTrue: [^ nil].
	refreshButton offColor: IRCClientColors channelListIdle;
		 label: self channelListDownloadButtonTag.
	self inform: 'Unable to download channels list.  See console.'