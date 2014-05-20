as yet unclassified
channelListDownloading: count 
	refreshButton isNil
		ifTrue: [^ nil].
	refreshButton label: self channelListDownloadingButtonTag , ' ' , count printString; update: nil