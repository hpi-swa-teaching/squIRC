profiles
disableProfileSelectButton: boolean 
	| morph |
	self topView isNil
		ifTrue: [^ nil].
	morph _ self topView
				submorphNamed: 'selectProfile'
				ifNone: [].
	morph isNil
		ifTrue: [^ nil].
	boolean
		ifTrue: [morph offColor: Color veryVeryLightGray]
		ifFalse: [morph offColor: self profileActionButtonColor]