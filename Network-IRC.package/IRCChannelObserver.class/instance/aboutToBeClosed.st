as yet unclassified
aboutToBeClosed
	connection removeChannelObserver: self.
	self release.
	self closeLog.
	^ true