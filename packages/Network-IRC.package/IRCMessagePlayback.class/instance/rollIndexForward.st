as yet unclassified
rollIndexForward
	self index == nil
		ifTrue: [^ nil].
	self index = self playBack size ifTrue: [^nil].
	self index: self index + 1