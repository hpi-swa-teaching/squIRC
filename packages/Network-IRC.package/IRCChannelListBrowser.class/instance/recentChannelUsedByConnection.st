as yet unclassified
recentChannelUsedByConnection
	| result |
	result _ connection recentChannelName.
	result isNil ifTrue: [result _ '#squeak'].
	result isEmpty ifTrue: [result _ '#squeak'].
	^result