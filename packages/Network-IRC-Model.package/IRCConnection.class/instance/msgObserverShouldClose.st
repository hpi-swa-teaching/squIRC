as yet unclassified
msgObserverShouldClose
	| window coll |
	self msgObserver isNil
		ifTrue: [^ nil].
	coll _ self msgObserver dependents
				select: [:x | x isKindOf: SystemWindow].
	coll isEmpty
		ifTrue: [^ nil].
	window _ coll first.
	window isInWorld
		ifTrue: [window delete].
	self msgObserver: nil