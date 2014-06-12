mIRC lines
extractGroupAndServerStringFrom: aString 
	| index start end |
	index := aString indexOf: $= startingAt: 1.
	start := index + 1.
	index := aString
				findString: self class serverStringTag
				startingAt: start
				caseSensitive: true.
	end := index - 1.
	^ aString copyFrom: start to: end