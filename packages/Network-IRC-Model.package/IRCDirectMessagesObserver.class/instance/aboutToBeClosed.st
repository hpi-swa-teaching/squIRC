as yet unclassified
aboutToBeClosed
	talkingTo isNil
		ifTrue: [connection msgObserver: nil.
			self release].
	^ true