as yet unclassified
updateServerAddressDisplay
	| morph |
	morph _ self findMorphNamed: 'serverAddress'.
	morph isNil ifTrue: [^nil].
	morph contents: self selectedServerAddress.
	self updateOkayButtonState