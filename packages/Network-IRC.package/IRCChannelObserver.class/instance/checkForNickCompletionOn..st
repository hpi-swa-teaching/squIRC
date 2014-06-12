as yet unclassified
checkForNickCompletionOn: morph 
	"Use attemptedNicks to track the ones we have tried already."
	| typed words word prefixSentence sentence limit match |
	typed := morph text.
	typed size < 1
		ifTrue: ["leading tabs are not nick matches."
			^ true].
	words := typed asString substrings.
	words isEmpty ifTrue: [^true].
	word := words last.
	nickMatchWord == nil
		ifTrue: [nickMatchWord := word].
	match := self firstUnattemptedNickThatMatches: word.
	match isNil
		ifFalse: [limit := typed size - word size.
			prefixSentence := typed copyFrom: 1 to: limit.
			sentence := prefixSentence , match.
			words size == 1 ifTrue: [ sentence := sentence, ': '].

			morph setText: sentence.
			morph
				setSelection: (sentence size + 1 to: sentence size + 1).
			morph hasUnacceptedEdits: true.
			^ false].
	^ true