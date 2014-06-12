as yet unclassified
validServerSelection

	self selectedServer isNil ifTrue: [^false].
	^self selectedPort isNil not