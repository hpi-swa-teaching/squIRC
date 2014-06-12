filtering
matches: aMessage
	"decide whether the message matches this pattern"
	sender ifNotNil: [ sender = aMessage sender ifFalse: [ ^false ] ].
	recipient ifNotNil: [ recipient = aMessage recipient ifFalse: [ ^false ] ].
	^true