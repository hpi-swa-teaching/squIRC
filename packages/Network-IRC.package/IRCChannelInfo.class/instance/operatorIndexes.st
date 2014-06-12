as yet unclassified
operatorIndexes
	"Answers an Interval of indexes for members that are operators."
	| start stop member |
	start _ 0.
	stop _ 0.
	1 to: members size do: [:index |
		member _ members at: index.
		member isOperator
			ifTrue: [
				start _ 1.
				stop _ index]
			ifFalse: [^Interval from: start to: stop]
		].
	^ Interval from: start to: stop