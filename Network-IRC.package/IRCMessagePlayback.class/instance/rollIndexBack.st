as yet unclassified
rollIndexBack
	self index == nil ifTrue: [^nil].
	self index <= 1 ifTrue: [^nil].
	self index: self index - 1