as yet unclassified
channelsBrowserShouldClose
	| window coll |
	self channelsBrowser isNil
		ifTrue: [^ nil].
	coll _ self channelsBrowser dependents
				select: [:x | x isKindOf: SystemWindow].
	coll isEmpty
		ifTrue: [^ nil].
	window _ coll first.
	window isInWorld
		ifTrue: [window delete].
	self channelsBrowser: nil