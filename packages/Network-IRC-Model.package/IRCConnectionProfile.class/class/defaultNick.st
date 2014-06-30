accessing
defaultNick
	DefaultNick isNil ifTrue: [self defaultNick: self defaultDefaultNick].
	^ DefaultNick