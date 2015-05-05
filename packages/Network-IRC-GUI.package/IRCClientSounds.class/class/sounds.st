private
sounds
	Sounds isNil ifTrue: [self initializeSoundsCaches].
	^Sounds