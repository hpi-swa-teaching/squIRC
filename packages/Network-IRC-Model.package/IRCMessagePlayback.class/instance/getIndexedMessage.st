as yet unclassified
getIndexedMessage
	self playBack isEmpty
		ifTrue: [^ nil].
	self index == nil
		ifTrue: [self index: self playBack size].
	^self playBack at: self index.
