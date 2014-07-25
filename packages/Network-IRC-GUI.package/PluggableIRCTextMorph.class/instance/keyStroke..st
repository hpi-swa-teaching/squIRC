as yet unclassified
keyStroke: evt 

	self break.
	keysInputPane isNil
		ifFalse: [keysInputPane keyStroke: evt]