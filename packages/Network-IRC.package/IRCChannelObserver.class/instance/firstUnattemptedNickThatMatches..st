as yet unclassified
firstUnattemptedNickThatMatches: word 
	| test |
	channel memberNames
		do: [:each | (self attemptedNicks includes: each)
				ifFalse: [self attemptedNicks add: each.
					test _ (self attemptedNicks includes: word)
								ifTrue: [each asIRCLowercase beginsWith: nickMatchWord asIRCLowercase]
								ifFalse: [each asIRCLowercase beginsWith: word asIRCLowercase].
					test
						ifTrue: [^ each]]].
	^ nil