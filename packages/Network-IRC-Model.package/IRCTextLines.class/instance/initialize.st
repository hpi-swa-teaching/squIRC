as yet unclassified
initialize
	super initialize.
	self limit: self class defaultLimit.
	self text: Text new