*network-irc-gui
incrementIndexPositionOfSubmorph: morph 
	| indexOfMorph indexOfPartner temp |
	submorphs isSequenceable
		ifFalse: [^ nil].
	indexOfMorph _ submorphs indexOf: morph.
	indexOfMorph = submorphs size
		ifTrue: [^ nil].
	indexOfPartner _ indexOfMorph + 1.
	temp _ submorphs at: indexOfPartner.
	self invalidRect: self fullBounds.
	submorphs at: indexOfPartner put: morph.
	submorphs at: indexOfMorph put: temp.
	self layoutChanged