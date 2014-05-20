as yet unclassified
voicedIndexes
	"Answers an Interval of indexes for members that are voiced."
	| start stop member |
	start _ members
				findFirst: [:x | x hasVoice].
	stop _ 0.
	start = 0
		ifFalse: [start
				to: members size
				do: [:index | 
					member _ members at: index.
					(member hasVoice and: [member isOperator not])
						ifTrue: [stop _ index]
						ifFalse: [^ Interval from: start to: stop]]].
	^ Interval from: start to: stop