parse mIRC entries
extractServerNameFrom: aString 
	| start index end |
	start := 1.
	index := aString indexOf: $: startingAt: start.
	index > 0
		ifTrue: [start := index + 1].
	end := aString size.
	^ (aString copyFrom: start to: end) withBlanksTrimmed