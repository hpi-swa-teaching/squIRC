as yet unclassified
requestChannelList
	| btns coll |
	btns := self myDependents
				select: [:m | m isKindOf: self actionButtonClass].
	coll := btns
				select: [:btn | btn label asString = self channelListDownloadButtonTag].
	coll isEmpty
		ifFalse: [coll first offColor: IRCClientColors channelListBuilding;
				 label: self channelListDownloadingButtonTag].
	connection requestChannelList